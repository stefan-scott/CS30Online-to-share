// Particles, PVectors, and Forces Demo
ArrayList<Particle> particles = new ArrayList<Particle>();
PVector grav = new PVector(0, 0.06);

Wind myWind;
PVector myWindForce = new PVector (0, -0.1);

void setup() {
  size(800, 400); 
  myWind = new Wind(width * 0.3, width * 0.5, myWindForce);
}


void mousePressed() {
  particles.add(new Particle(mouseX, mouseY));
}

void draw() {
  background(255);

  myWind.runWind();
  //Process all the particles
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.applyForce(grav);
    if (p.isInside(myWind)) {
      p.applyForce(myWind.force);   //→should be conditional
    }

    p.move();
    p.display();
  }
}
