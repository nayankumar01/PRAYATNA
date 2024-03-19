#include <LiquidCrystal_I2C.h>
#define BLYNK_PRINT Serial
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <DHT.h>
#define BLYNK_TEMPLATE_ID "TMPL3cu5EN-XP"
#define BLYNK_TEMPLATE_NAME "WATERPUMP"

//Initialize the LCD display
LiquidCrystal_I2C lcd(0x27, 16, 2);

char auth[] = "SpX7L5K5CMd71f5yxfGv56qHLjRrXPve";
char ssid[] = "hrishabh";
char pass[] = "12345678ritag";

BlynkTimer timer;
 bool s1 = 0;
 bool s2=0;

DHT dht(D4, DHT11);
#define sensor A0
const int mot = D6;


void sendSensor()
{
  float h = dht.readHumidity();
  float t = dht.readTemperature(); 


    Blynk.virtualWrite(V2, t);
    Blynk.virtualWrite(V3, h);
    Serial.print("Temperature : ");
    Serial.print(t);
    Serial.print("    Humidity : ");
    Serial.println(h);
    lcd.setCursor(4, 0);
    lcd.print("T:");
  lcd.print(t);
 lcd.setCursor(11, 0);
 
  lcd.print("H:");
  lcd.print(h);
}
void setup() {
  Serial.begin(9600);
  pinMode(mot, OUTPUT);
  pinMode(wat, OUTPUT);
  lcd.init();
  lcd.backlight();

  Blynk.begin(auth, ssid, pass, "blynk.cloud", 80);

  lcd.setCursor(1, 0);
  lcd.print("System Loading");
  for (int a = 0; a <= 15; a++) {
    lcd.setCursor(a, 1);
    lcd.print(".");
    delay(500);
  }
  lcd.clear();

  //Call the function
  timer.setInterval(100L, soilMoistureSensor);
   dht.begin();
  timer.setInterval(100L, sendSensor);
}

 Serial.println(pinValue);

  };

// to Get the soil moisture values
void soilMoistureSensor() {
  int value = analogRead(sensor);
  value = map(value, 0, 1024, 0, 100);
  value = (value - 100) * -1;

  Blynk.virtualWrite(V0, value);
  lcd.setCursor(0, 0);
  lcd.print("M:");
  lcd.print(value);
  int motorThreshold = 30;
  
  if (value < motorThreshold) {
    digitalWrite(mot, HIGH); // Turn on the motor
    lcd.setCursor(0, 1);
    lcd.print("motor is ON ");
    // delay(2000);
  } else {
    digitalWrite(mot, LOW); // Turn off the motor
    lcd.setCursor(0, 1);
    lcd.print("motor is OFF ");
    delay(2000);
  }
}

void loop() {
  
  Blynk.run();
  timer.run();
}
