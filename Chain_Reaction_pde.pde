Ball[] BALLS;
boolean REACTIONSTARTED;

void setup(){
  size(600, 600);
  REACTIONSTARTED = false;
  BALLS = new Ball[25];
  for (int i = 0; i < BALLS.length; i++){
    BALLS[i] = new Ball();
    
  }
  frameRate(60);
}

void draw(){
  background(0);
  for (int i=0; i < BALLS.length; i++){
    color c = BALLS[i].c;
    ellipse(BALLS[i].x, BALLS[i].y, BALLS[i].rad, BALLS[i].rad);
    fill(c); 
    noStroke();
    BALLS[i].move();
  }
}

void mouseClicked(){
  REACTIONSTARTED = true;
  expand();
  contract();
}

void expand(){
  background(245);
  for (int i=0; i < BALLS.length; i++){
    color c = BALLS[i].c;
    BALLS[i].dx = 0;
    BALLS[i].dy = 0;
    for(int size = 0; size < 50; size+=5){
      ellipse(BALLS[i].x, BALLS[i].y, BALLS[i].rad + size, BALLS[i].rad + size);
      delay(100);
    }
    fill(c); 
    noStroke();
  }
}
void contract(){
  for (int i=0; i < BALLS.length; i++){
    color c = BALLS[i].c;
    BALLS[i].dx = 0;
    BALLS[i].dy = 0;
    for(int size = 50; size >= 0; size-=5){
      ellipse(BALLS[i].x, BALLS[i].y, BALLS[i].rad + size, BALLS[i].rad + size);
      delay(100);
    }
    fill(c); 
    noStroke();
  }
}