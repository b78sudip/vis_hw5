int startMouseY;
int sliderPosition = 215;

// This is a value from -1 to 1.
float brightness = 0;

void drawSlider() {
  rect(30, 30, 10, 470);
  rect(15, sliderPosition, 40, 15);
}

void setSliderPosition(int position) {
   sliderPosition = position;
  if (sliderPosition < 40)
    sliderPosition = 40;
  if (sliderPosition > 470)
    sliderPosition = 470;
   
  brightness = ((sliderPosition - 20.) - 470./2.) / 215.;
}

boolean isClickInSlider = false;
  

void mousePressed() {
  if (mouseX >= 15 && mouseX <= 15 + 40) {
    isClickInSlider = true;
  } else {
    isClickInSlider = false;
  }
   if (isClickInSlider && mouseY >= sliderPosition && mouseY <= sliderPosition+15) {
    isClickInSlider = true;
  } else {
    isClickInSlider = false;
  }
  
  if (isClickInSlider)
    setSliderPosition(mouseY);
  
}

void mouseDragged() {
  if (isClickInSlider)
    setSliderPosition(mouseY);
}