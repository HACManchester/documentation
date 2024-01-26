Project Members
---------------

-   Guy

Idea
----

Dot Matrix printer fed a continuous stream of paper, to print tweets
which contain a search term in near realtime.

Blueprint
---------

-   Script that polls the Twitter API for tweets with a given keyword

Interval ?

Need to sanitise text ?

<http://search.twitter.com/search.json?q=hacman&since_id=1520639490>

-   Parses returned JSON and populates message queue

` search(id,value);`
` message_queue(message_id,search_id,time,from_user,from_user_id,to_user_id,message);`
` last_message(search_id,message_id);`

-   Arduino calls a script that returns the next message

return ascii string containing CR and LF that can be streamed straight
to the printer

Implementation
--------------

Test implementation of reading data from Twitter API and parsing it:
<http://www.thouret.co.uk/jsontest.php?q=stockport>

MySQL database schema as in blueprint created.

Script now in place and run by cron every 5mins to populate the
message_queue table:

      # Twitter Poller
      # Guy Thouret
      # 9/2/2010

      # get_url function
        function get_url($url) {
          $ch = curl_init();
          curl_setopt($ch,CURLOPT_URL,$url);
          curl_setopt($ch,CURLOPT_RETURNTRANSFER,
          curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,
          $content = curl_exec($ch);
          curl_close($ch);
          return $content;
        }

        # Script constants
        $debug      = false;
        $twitter_search_api = "http://search.twitter.com/search.json";
        $dbhost     = 'localhost';
        $dbuser     = 'xxxx';
        $dbpass     = 'xxxx';
        $dbname     = 'feedprinter';

        # DB Connection
        $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error connecting to mysql');
        mysql_select_db($dbname);

        # Perform Searches
        $q = "SELECT * FROM search";
        $r = mysql_query($q);

        while ($row = mysql_fetch_assoc($r)) {
            # Get Last ID
            $q2 = "SELECT message_id FROM last_message WHERE search_id = ".$row['id'];
            $r2 = mysql_query($q2);
            $row2 =  mysql_fetch_assoc($r2);

            $last_id = $row2['message_id'];
            if ($debug) {
                echo "lastid=".$last_id;
            }
            print_r($row2);

            $json_result = get_url($twitter_search_api."?q=".$row['value']."&since_id=".$last_id);
            $result = json_decode($json_result);

            $last_id = 0;
            foreach ($result->results as $tweet) {
                $q3 = "INSERT INTO message_queue VALUES ('".$tweet->id."','".$row['id']."','".$tweet->created_at."','".$tweet->from_user."','".$tweet->from_user_id."','".$tweet->to_user_id."','".$tweet->text."')";
                $r3 = mysql_query($q3);
                if ($debug) {
                    echo $q3;
                }
                if ($tweet->id > $last_id) $last_id = $tweet->id;
            }

            if ($last_id != 0) {
                $q4 = "UPDATE last_message SET message_id=".$last_id." WHERE search_id=".$row['id'];
                $r4 = mysql_query($q4);
            }
        }

        mysql_close($conn)

[Category:Projects](Category:Projects "wikilink")