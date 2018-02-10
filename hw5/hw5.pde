PImage img;

void setup() {
  size(400, 533);
  img = loadImage("image.jpg");
}

void draw() {
  drawImage(); 
  drawSlider();
}