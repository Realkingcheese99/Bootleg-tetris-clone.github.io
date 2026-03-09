
int scrH;
int scrW;
float cH;
float cW;
float cR;
float boxSize;
float j;
int frm;
float interval;
int anchorX;
int anchorY;
float offset;

void setup() {
  fullScreen();
  //background(0);
  anchorX = 5;
  scrH = displayHeight;
  scrW = displayWidth;
  cH = scrH/5;
  cW = 2*scrW/5;
  //cR = 3;
  boxSize = cW/10;
  j = 1;
  interval = 50;
  offset = 3*scrW/10;
 
}


void draw(){
background(0);

frm = frameCount;
rect(3*scrW/10, 0, cW, scrH);

//score and next piece
rect(3*scrW/10+cW+(((3*scrW/10)-(3*scrH/10))/2), cH, 3*cH/2, 3*cH/2);

if(frm % interval == 0) {
j=j+boxSize;
}

/*
rect(3*scrW/10+anchorX*cW/10, j, boxSize, boxSize);
rect((3*scrW/10+anchorX*cW/10)+boxSize, j, boxSize, boxSize);
rect((3*scrW/10+anchorX*cW/10)+boxSize, (j-boxSize), boxSize, boxSize);
rect((3*scrW/10+anchorX*cW/10  )+2*boxSize, (j-boxSize), boxSize, boxSize);
*/;

rect(offset+anchorX*boxSize, j, boxSize, boxSize);
rect((offset+anchorX*boxSize)+boxSize, j, boxSize, boxSize);
rect((offset+anchorX*boxSize)+boxSize, (j-boxSize), boxSize, boxSize);
rect((offset+anchorX*boxSize  )+2*boxSize, (j-boxSize), boxSize, boxSize);





}

void keyPressed(){
  if(key==CODED){
  if(keyCode==LEFT) {
    anchorX=anchorX-1;
  }
  else if(keyCode==RIGHT) {
    anchorX++;
  }
}
}
