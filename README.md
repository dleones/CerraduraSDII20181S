int duracion=250; //Duración del sonido
int fMin=500; //Frecuencia más baja que queremos emitir
int fMax=1000; //Frecuencia más alta que queremos emitir
int i=0;
int sensor = A0; //sensor de temperatura conectado a pin analogico
int relay = 8;  // pin 8 al rele
int buzzer = 7;
int temperatura =0;
int temp;
 
void setup(){
 Serial.begin(9600);
 pinMode (buzzer, OUTPUT); //pin configurado como salida
 pinMode (relay, OUTPUT); //pin configurado como salida
}
 
void loop(){
  //sonido más agudo
  temp = analogRead(sensor);
  temperatura = (500*temp)/1024;
  Serial.println("temperatura: " );
  Serial.println(temperatura);
  digitalWrite(relay,HIGH);
  if (temperatura>=25 and temperatura<=30){
    digitalWrite(relay,HIGH);
  } 
  else if(temperatura<25){
    digitalWrite(relay,HIGH);
    alarma();
  }
  else{
