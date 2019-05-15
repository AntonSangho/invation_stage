// This is an empty Processing sketch with support for Fadecandy.
  

  
import processing.sound.*;
Amplitude amp;
AudioIn in;

OPC opc;
int x = 100;

void setup()
{
  size(600, 300);
  opc = new OPC(this, "127.0.0.1", 7890);

  opc.ledStrip(0, 38, width/2, height/2, 10, 0, false);
  stroke(255, 0, 0);
  frameRate(60);
  noLoop();
  
  // Set up your LED mapping here
}

void draw()
{
  background(0);
  x = x + 1;
  if (x < 600) {
    line (x, 100, x, 200);
  }
  //line (x, 100, x, 200); 
  //x = x - 1;
  //if (x < 0) {
  //  x = width;
  //}
  //line(0, x, height, x);
  // Draw each frame here
}

void mousePressed() {
  loop();
}

void mouseReleased() {
  noLoop();
}
