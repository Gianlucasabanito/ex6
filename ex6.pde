import peasy.*;
import processing.video.*;

Capture video;
PeasyCam cam;

void setup() {
  size(500,380,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(5);
  cam.setMaximumDistance(1000);
  frameRate(30);
  video = new Capture(this, width, height, 30); 
  String[] devices = Capture.list(); 
  println(devices); video.start();
}
