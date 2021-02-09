class WindLine{
  //wind lines always travel up  
  
  PVector pos, vel;
  float len;
  
  //Constructor
  WindLine(float x){
    pos = new PVector(x, random(height));
    vel = new PVector(0, random(-2, -0.5));
    len = random(4, 15);
  }
  
  //class methods
  void move(){
    pos.add(vel);
    if(pos.y < 0) pos.y = height;  //wrap around
  }
  
  void display(){
    line(pos.x, pos.y, pos.x, pos.y-len); 
  }
  
}
