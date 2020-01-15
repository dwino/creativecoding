void setup() {
  fullScreen();
  //size(500, 500);
  background(0);
}

void draw() {
  float numX = randomGaussian();
  float sdX = 60;
  float meanX = width/2;

  float x = (numX * sdX) + meanX;

  float numY = randomGaussian();
  float sdY = 60;
  float meanY = height/2;

  float y = (numY * sdY) + meanY;

  noStroke();
  fill(255, 5);
  ellipse(x, y, 16, 16);
}
