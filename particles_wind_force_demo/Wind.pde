class Wind{
  
   //class properties
   float startX, endX;
   PVector force;
   ArrayList<WindLine> windLines = new ArrayList<WindLine>();
   int NUM_WIND_LINES = 100;
   
   //constructor
   Wind(float x1, float x2, PVector f){
     startX = x1;
     endX = x2;
     force = f;
     initWind();
   }
   
   //class methods
   void initWind(){
     //fills up the windLines ArrayList with many WindLine objects.
     for (int i = 0; i < NUM_WIND_LINES; i++){
       windLines.add(new WindLine(random(startX, endX)));
     }
   }
   
   void runWind(){
     for (WindLine w: windLines){   //for w in windLines
       w.move();
       w.display();
     }
   }
}
