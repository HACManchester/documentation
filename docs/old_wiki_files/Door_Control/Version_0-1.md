This version uses a hardware switch to activate, and a random number
generator to emulate RFID Tags with wrong and right codes.

UPDATE: New code with password and menu system in its infancy.

Hardware
--------

Picture of 0-1 hardware can be seen
[here](http://farm5.static.flickr.com/4024/4282128537_9b6d1506b7_b.jpg)

Behaviour
---------

When the Arduino detects a high input on pin 2 (rfidIn - see
[\#Code](#Code "wikilink")), a random number is generated between 0 and
100. If this number is less than or equal to 50, then the Arduino
assumes this is a valid card and opens the lock (an LED in this case)
and turns on the green LED for 3 seconds. If this number is more than
50, then the Arduino assumes this is an invalid card and just turns on
the red LED for 3 seconds.

### Serial Output

This is a sample serial output from the Arduino

    Serial Connection Innitiated
    Welcome to HACMan Security
    ----------------------------
    Access Denied
    Number:51

    Access Granted
    Number:49

    Access Granted
    Number:5

    Access Denied
    Number:72

    Access Denied
    Number:76

Code
----

[Previous
Sub-Versions](Door_Control/Version_0-1/Previous_Sub-Versions "wikilink")

    /*  RFID Door Control
     by Thomas Bloor - aka. TBSliver

     Version: 0-11

     This version has only a very basic functionality
     which is done using LED's, a hardware switch, and
     a random number generator.
     This version also includes extras for the serial menu.
     */

    char menuInput[36];

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
      Serial.println("Please type menu to enter the menu");
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
          Serial.print("Number: ");
          Serial.println(randNumber);
          Serial.println("");
          digitalWrite(redPin, HIGH);
          delay(3000);
          digitalWrite(redPin, LOW);

        }
      }
      if(readSerial()==1){
        if(!strcmp(menuInput, "menu")){
          digitalWrite(redPin, HIGH);
          digitalWrite(greenPin, HIGH);
          menu();
          digitalWrite(redPin, LOW);
          digitalWrite(greenPin, LOW);
        }
        else {
          Serial.println("Did not understand command.");
          Serial.print("You entered: ");
          Serial.println(menuInput);
          Serial.println("type in menu to get to the menu");
          Serial.println("");
        }
      }
    }

    void menu(){
      boolean exit = 0,pass = 0;
      int tries=3;
      Serial.println("Welcome to the Menu System");
      Serial.println("\r\nPlease enter password to continue");
      while(pass==0 && tries > 0){
        if(readSerial()==1){
          if(!strcmp(menuInput, "pass")){
            pass = 1;
            Serial.println("Password correct");
          }
          else {
            Serial.print("Password incorrect, ");
            Serial.print(tries);
            Serial.println(" attempts left");
            tries--;
          }

        }
      }


      if(tries==0){
        Serial.println("All attempts used, exiting menu");
      }
    }

    int readSerial(){
      int i=0,serialNo=0;
      if(Serial.available() > 0) {
        delay(100);
        serialNo = Serial.available();

        for(i=0; i<serialNo; i++) {
          menuInput[i] = Serial.read();
        }
        menuInput[serialNo] = '\0';
        return 1;
      }
      else {
        return 0;
      }
    }

[Category:Madlab projects](Category:Madlab_projects "wikilink")