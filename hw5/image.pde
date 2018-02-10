void drawImage() {
  img.resize(400,530);
  //image(img, 0, 0);

  loadPixels();
  img.loadPixels();
  for(int x = 0; x < img.width; x++) {
    for(int y = 0; y < img.height; y++) {
      int loc = x + y * img.width;
      
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      r += int(brightness * 100);
      g += int(brightness * 100);
      b += int(brightness * 100);
      
      pixels[loc] = color(r, g, b);
    }
  }
  updatePixels();
}