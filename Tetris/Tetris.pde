

int column = 0;
void setup() {
  fullScreen();
}

int j = 1;

void draw(){
int scrH = displayHeight;
int scrW = displayWidth;
float cH = scrH/5;
float cW = 2*scrW/5;
float cR = 3;
//playbox
rect(3*scrW/10, 0, cW, scrH);
//println("screen width:", scrW);
//println("screen height:", scrH);
//score and next piece
rect(3*scrW/10+cW+(((3*scrW/10)-(3*scrH/10))/2), cH, 3*cH/2, 3*cH/2);

float boxSize = cW/10;

rect(3*scrW/10+column*cW/10, j*cR, boxSize, boxSize);
rect((3*scrW/10+column*cW/10)+boxSize, j*cR, boxSize, boxSize);
rect((3*scrW/10+column*cW/10)+boxSize, (j*cR-boxSize), boxSize, boxSize);
rect((3*scrW/10+column*cW/10  )+2*boxSize, (j*cR-boxSize), boxSize, boxSize);
j++;




}

void keyPressed(){
  if(key==CODED){
  if(keyCode==LEFT) {
    column=column-1;
  }
  else if(keyCode==RIGHT) {
    column++;
  }
}
}
