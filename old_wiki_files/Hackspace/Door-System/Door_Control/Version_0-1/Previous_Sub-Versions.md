__FORCETOC__

Version 0-10
------------

    /*  RFID Door Control
        by Thomas Bloor - aka. TBSliver

        Version: 0-1

        This version has only a very basic functionality
        which is done using LED's, a hardware switch, and
        a random number generator.
    */

    int redPin = 5;
    int yellowPin = 4;
    int greenPin = 3;
    int lockPin = 6;
    int rfidIn = 2;

    void setup() {
      pinMode(redPin, OUTPUT);
      pinMode(yellowPin, OUTPUT);
      pinMode(greenPin,OUTPUT);
      pinMode(lockPin, OUTPUT);
      pinMode(rfidIn, INPUT); //change to serial input for RFID reader

      Serial.begin(9600); //Serial output to comp at 9600bps
      Serial.println("Serial Connection Innitiated");
      Serial.println("Welcome to HACMan Security");
      Serial.println("----------------------------");

      randomSeed(analogRead(0));

      //startup LED pattern
      digitalWrite(redPin, HIGH);
      digitalWrite(yellowPin, HIGH);
      digitalWrite(greenPin, HIGH);
      delay(500);
      digitalWrite(redPin, LOW);
      digitalWrite(yellowPin, LOW);
      digitalWrite(greenPin, LOW);
      delay(250);
      digitalWrite(yellowPin, HIGH);
    }

    void loop() {
      int val=0,randNumber=0;

      val = digitalRead(rfidIn); //will be replaced with serial in

      if(val==1){
        delay(500); //debounce
        randNumber = random(100); //only to get a non-unlock element

        if(randNumber<=50){ //insert search pattern here
          Serial.println("Access Granted");
          Serial.print("Number:");
          Serial.println(randNumber);
          Serial.println("");
          digitalWrite(greenPin, HIGH);
          digitalWrite(lockPin, HIGH);
          delay(3000);
          digitalWrite(greenPin, LOW);
          digitalWrite(lockPin, LOW);
        }
        else{
          Serial.println("Access Denied");
          Serial.print("Number:");
          Serial.println(randNumber);
          Serial.println("");
          digitalWrite(redPin, HIGH);
          delay(3000);
          digitalWrite(redPin, LOW);

        }
      }
    }

[Category:Madlab projects](Category:Madlab_projects "wikilink")