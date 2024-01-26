<img src="Urlbounce.png" title="fig:Urlbounce.png" width="300" alt="Urlbounce.png" />
One of the things we have set up on the HACMan site are URL bouncers, to
send a user to a preset url from a permanent bookmark on our sit, For
example [The Mailing List](http://hacman.org.uk/list) and [March
Madness](http://hacman.org.uk/mm).

Until now, they have been done by copy-pasting a php redirect script in.
I've been wanting to learn how to make habari plugins for a while, and
wanted to add the URL bounce functionality to habari. So i did!

To get:
-------

    wget http://habariproject.org/dist/plugins/urlbounce/urlbounce-trunk.zip

To install:
-----------

    unzip urlbounce-trunk.zip
    mv urlbounce habariroot/user/plugins/

In the Habari Admin, click Activate on the URL Bouncer plugin

To use:
-------

Admin Menu &gt; New &gt; URL Bouncer Add the URL title, and the URL.
Choose the slug you want to represent it. Click publish, then save.
(right now, you cant just hit publish, because the content field is
still alive, but hidden and empty. The publish button doesnt like this)

[Category:Website](Category:Website "wikilink")