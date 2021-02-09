class Particle{
   //class properties
   PVector pos;
   PVector vel;
   PVector accel; //gravity and wind
   
   //constructor
   Particle(float x, float y){
     pos = new PVector(x,y);
     vel = new PVector(random(3,5), 0);
     accel = new PVector(0,0);
   }
   
   //class methods
   void applyForce(PVector f){
     accel.add(f);  
   }
   
   void move(){
     vel.add(accel);
     pos.add(vel);
     accel.mult(0);
   }
   
   void display(){
     circle(pos.x, pos.y, 30); 
   }
   
   Boolean isInside(Wind w){
     if(pos.x >= w.startX && pos.x <= w.endX){
       return true;  
     }
     else return false;
   }
  
}
