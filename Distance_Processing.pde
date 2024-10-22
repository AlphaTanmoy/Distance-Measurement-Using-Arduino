import processing.serial.*;
Serial myPort;
String data="" ;
PFont myFont;

void setup()
{
size(1366,900); // size of processing window
background(0);// setting background color to black
myPort = new Serial(this, "COM6", 9600);
myPort.bufferUntil('\n');
}
void draw()
{
background(0);
textSize(70);
fill(#ffffff);
int result = 0;
for (int i = 0; i < data.length(); i++) {
if (data.charAt(i)=='0') {result = result * 10 + 0;}
if (data.charAt(i)=='1') {result = result * 10 + 1;}
if (data.charAt(i)=='2') {result = result * 10 + 2;}
if (data.charAt(i)=='3') {result = result * 10 + 3;}
if (data.charAt(i)=='4') {result = result * 10 + 4;}
if (data.charAt(i)=='5') {result = result * 10 + 5;}
if (data.charAt(i)=='6') {result = result * 10 + 6;}
if (data.charAt(i)=='7') {result = result * 10 + 7;}
if (data.charAt(i)=='8') {result = result * 10 + 8;}
if (data.charAt(i)=='9') {result = result * 10 + 9;}
}
text("Submited by ",650,100);
textSize(40);
fill(#87CEEB);
text("[ BWU/MCA/22/046 , BWU/MCA/22/038,",650,150);
text("BWU/MCA/22/037 , BWU/MCA/22/032 ]",650,200);
textAlign(CENTER);
textSize(100);
fill(#00FF00);
if(result>=2 && result<=400){
text(data,780,470);
}
else{
text("CAP",780,470);  
}
textSize(100);
fill(#4B5DCE);
text("Distance Detector\nDistance:           cm",650,350);
noFill();
stroke(#4B5DCE);
fill(#ff0000);
textSize(30);
text("Range is 2cm to 400cm (CAP=Out of Range)",650,650);
}
void serialEvent(Serial myPort)
{
data=myPort.readStringUntil('\n');
}
