PImage img;

void setup() {
  size(400, 530);
  img = loadImage("image.jpg");  
}

void draw() {
  drawImage();
  if (sliderPosition < img.height/2) {
    increaseBrightness();
  } else {
  decreaseBrightness();
  }
  drawSlider();
}
