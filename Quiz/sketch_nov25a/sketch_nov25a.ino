int sensorPosPin = A2; // input pin for MR sensor
int rawPos;
int t=0;
int mode=0;
int inByte;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//9600
  pinMode(sensorPosPin, INPUT); // set MR sensor pin to be an input
}
 
void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    inByte = Serial.read();
  
  
    if(inByte=='0'){
    mode=0;
    }
     else if(inByte=='1'){
    mode = 1;
     }
  }
  
  if(mode==0){
    rawPos = analogRead(sensorPosPin);
   }
    if(mode==1){
       t = t+1;
     rawPos = 512+512.0* sin(0.1*t);
    }
   Serial.println(rawPos);
  delay(10);
  
}

