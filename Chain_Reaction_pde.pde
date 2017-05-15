Ball[] BALLS;
boolean REACTIONSTARTED;
int EXPAND_OR_CONTRACT;  // maybe should be attribute of ball 

void setup(){
  size(600, 600);
  REACTIONSTARTED = false;
  EXPAND_OR_CONTRACT = 1;
  BALLS = new Ball[25];
  for (int i = 0; i < BALLS.length; i++){
    BALLS[i] = new Ball();
    
  }
  frameRate(60);
}

void draw(){
  background(0);
    if (REACTIONSTARTED == true){
      for (int i=0; i < BALLS.length; i++){
        if (BALLS[i].rad > 100){
          EXPAND_OR_CONTRACT = -1;
          System.out.println(BALLS[i].rad);
          System.out.println(EXPAND_OR_CONTRACT);
        }
        else if (BALLS[i].rad < 21){
          EXPAND_OR_CONTRACT = 1;
          System.out.println(BALLS[i].rad);
          System.out.println(EXPAND_OR_CONTRACT);
        }
        
        BALLS[i].rad += EXPAND_OR_CONTRACT;
        fill(BALLS[i].c);
        ellipse(BALLS[i].x, BALLS[i].y, BALLS[i].rad, BALLS[i].rad);
      }
    }
  
  else{
    for (int i=0; i < BALLS.length; i++){
      color c = BALLS[i].c;
      fill(c);
      ellipse(BALLS[i].x, BALLS[i].y, BALLS[i].rad, BALLS[i].rad);
      //noStroke(); //why is this necessary?
      BALLS[i].move();
    }
  }
}


void mouseClicked(){
  REACTIONSTARTED = !REACTIONSTARTED;
}
