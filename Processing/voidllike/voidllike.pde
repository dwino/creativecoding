void setup() {
  fullScreen();
  //size(500, 500);
  background(0);
}

void draw() {
  //gaussian random number for x location ellipse
  float sdX = 60;
  float meanX = width/2;
  float gaussX = createRandomGaussian(sdX, meanX);

  //gaussian random number for y location ellipes
  float sdY = 60;
  float meanY = height/2;
  float gaussY = createRandomGaussian(sdY, meanY);

  //gaussian random number for width location ellipse
  float sdWidth = 100;
  float meanWidth = 16;
  float gaussWidth = createRandomGaussian(sdWidth, meanWidth);

  //gaussian random number for height location ellipse
  float sdHeight = 100;
  float meanHeight = 16;
  float gaussHeight = createRandomGaussian(sdHeight, meanHeight);

  noStroke();
  fill(255, 2);
  ellipse(gaussX, gaussY, gaussWidth, gaussHeight);
}

float createRandomGaussian(float sd, float mean) {
  return (randomGaussian() * sd) + mean;
}
