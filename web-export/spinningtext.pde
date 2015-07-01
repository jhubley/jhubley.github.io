PFont f; // type object
float theta;
String message = "hey hey we're gonna make this look crazy";

void setup(){
  size(displayWidth, displayHeight); //fullscreen
  background(0);
  f = createFont("Verdana",44,false); // font-family, font-size, anti-aliasing
  textFont(f);
}
void draw(){
  fill(#fff000);
  int m = 10;
  for (int i = 0; i < message.length(); i++){
    textSize(random(30,40));
    text(message.charAt(i),m,height/2);
    m += textWidth(message.charAt(i));
  }
  fill(#ff3300);
  ellipse(mouseX, 200, 200, 200);
  translate(500, height/2);
  rotate(theta);
  fill(#0000ff);
  text("what's up text", 0, 0);
  theta += 0.05; // increase rotation
  println(mouseX); // print the mouse position in the console

}

