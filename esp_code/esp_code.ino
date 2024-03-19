#include<LiquidCrystal_I2C.h>
#include<DHT.h>

#define BLYNK_TEMPLATE_ID           "TMPL3cu5EN-XP"
#define BLYNK_TEMPLATE_NAME         "Quickstart Template"
#define BLYNK_AUTH_TOKEN            "Spx7L5K5CMd71f5yxfGv56qHLjRrXPve"

#define BLYNK_PRINT Serial
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
//intialize lcd
LiquidCrystal_I2C lcd(0x27,16,2);
// Your WiFi credentials.
// Set password to "" for open networks.
char ssid[] = "AITR4";
char pass[] = "admin004";

BlynkTimer timer;

bool s1=0;
bool s2=0;
DHT dht(D4,DHT11);
#define sensor A0
//defining var for motor and water pump  
const int mot=D6;
const int wat=D7;

void sendSensor(){
  // var for humidity
  float h=dht.readHumidity();
  //var to temprature 
  float t=dht.readTemperature();

  //uploading data 
  Blynk.virtualWrite(V2,t);
  Blynk.virtualWrite(V3,h);
  //printing temp and humidity at screen
  Serial.print("Temprature:");
  Serial.print(t);
  Serial.print("   Humidity:");
  Serial.print(h);
  lcd.setCursor(4,0);
  lcd.print("T;");
  lcd.print(t);
  lcd.setCursor(11,0);
  lcd.print("H;");
  lcd.print(h);
}


void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Blynk.begin(BLYNK_AUTH_TOKEN, ssid, pass,"Blynk.cloud",80);
  //for output
  pinMode(mot,OUTPUT);
  pinMode(wat,OUTPUT);
  lcd.init();
  lcd.backlight();
  lcd.setCursor(1,0);
  lcd.print("System Loading");
  for(int a=0;a<=15;a++){
    lcd.setCursor(a,1);
    lcd.print(".");
    delay(500);
  }
  lcd.clear();


  //ca;; function 
  timer.setInterval(100L,soilMoistureSensor);
  dht.begin();
  timer.setInterval(100L,sendSensor);
}
//v1 
BLYNK_WRITE(V1){
 s1=param.asInt();
 if(s1==1){
   digitalWrite(wat,HIGH);
   lcd.setCursor(0,1);
   lcd.print("Pump  is ON");
 }else{
   digitalWrite(wat,LOW);
   lcd.setCursor(0,1);
   lcd.print("Pump is OFF");
 }
};


//v4 pin working 
BLYNK_WRITE(V4){
 s2=param.asInt();
 if(s2==1){
   digitalWrite(mot,HIGH);
   lcd.setCursor(0,1);
   lcd.print("Motor is ON");
 }else{
   digitalWrite(mot,LOW);
   lcd.setCursor(0,1);
   lcd.print("Motor is OFF");
 }
};

void soilMoistureSensor(){
  int Value=analogRead(sensor);
  Value=map(Value,0,1024,0,200);
  Value=(Value-100)*-1;
  Blynk.virtualWrite(V0,Value);
  lcd.setCursor(0,0);
  lcd.print("M");
  lcd.print(Value);

  int motorThreshold= 40;

  if(Value<motorThreshold){
    digitalWrite(mot,HIGH);//motor on karo 
    lcd.setCursor(0,1);
    lcd.print("Motor is ON");

  }else{
    digitalWrite(mot,LOW);
    lcd.setCursor(0,1);//motor off karo 
    lcd.print("Motor is OFF");
  }
} 
void loop() {
  // put your main code here, to run repeatedly:
  Blynk.run();
  timer.run();

}
