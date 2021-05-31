ArrayList<PVector> particles;


void setup() {
size(1280, 720, P3D);
 smooth(4);
background(255);
stroke(0, 50);
fill(250, 3);
float xstart = random(10);
float ynoise = random(10);
translate(width/2, height/2, 0);
for (float y = -(height/8); y <= (height/8); y+=3) {
ynoise += 0.02;
float xnoise = xstart;
for (float x = -(width/8); x <= (width/8); x+=3) {
xnoise += 0.02;
drawPoint(x, y, noise(xnoise, ynoise));
}
}
}
void drawPoint(float x, float y, float noiseFactor) {
pushMatrix();
translate(x * noiseFactor * 4, y * noiseFactor * 4, -y);
float edgeSize = noiseFactor * 26;
ellipse(0, 0, edgeSize, edgeSize);
popMatrix();
}

void reset() {
  particles = new ArrayList<PVector>();
  for (int i = 0; i < 1000; i++) {
    particles.add(new PVector(random(width), random(height)));
  }
}