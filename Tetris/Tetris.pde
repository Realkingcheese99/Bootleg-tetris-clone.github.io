//playfield
int[][] grid;
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
float jy;
float px;
float py;

void setup() {
  fullScreen();
  //background(0);
  anchorX = 5;
  scrH = displayHeight;
  scrW = displayWidth;
  cH = scrH/5;
  cW = 2*scrW/5;
  boxSize = scrH/16;
  j = 0;
  interval = 50;
  offset = (scrW/2-5*boxSize);
  //playfield
  grid = new int[10][16];
  jy = scrH % 16;
}


void draw(){
background(#C8C8C8);
frm = frameCount;

//playfield
rect(offset, 0, 10*boxSize, scrH);     
for(int i =0; i<17; i++) {
  line(offset, (scrH % 16) + i*boxSize, offset+(10*boxSize), (scrH % 16) + i*boxSize);
  if(i<11){
  line(offset+(i*boxSize), 0, offset+(i*boxSize), scrH);
  }
}

//score and next piece
rect(3*scrW/10+cW+(((3*scrW/10)-(3*scrH/10))/2), cH, 3*cH/2, 3*cH/2);


grid[0][0] = 1;

if(frm % interval == 0) {
j++;
jy=(j*boxSize)+ scrH % 16;
}
fill(255,125,150);
for(int x = 0; x < 10; x++) {
  for(int y = 0; y < 16; y++) {
    if(grid[x][y] == 1) {
      rect(offset+(x*boxSize), (scrH % 16) + y*boxSize, boxSize, boxSize);
    }
  }
}



/*

rect(3*scrW/10+anchorX*cW/10, j, boxSize, boxSize);
rect((3*scrW/10+anchorX*cW/10)+boxSize, j, boxSize, boxSize);
rect((3*scrW/10+anchorX*cW/10)+boxSize, (j-boxSize), boxSize, boxSize);
rect((3*scrW/10+anchorX*cW/10  )+2*boxSize, (j-boxSize), boxSize, boxSize);

fill(255,125,150);
rect(offset+anchorX*boxSize, jy, boxSize, boxSize);
rect((offset+anchorX*boxSize)+boxSize, jy, boxSize, boxSize);
rect((offset+anchorX*boxSize)+boxSize, (jy-boxSize), boxSize, boxSize);
rect((offset+anchorX*boxSize  )+2*boxSize, (jy-boxSize), boxSize, boxSize);
fill(255, 255, 255);

*/

grid[8][7] =  1;
grid[9][7] =  1;
fill(255, 255, 255);

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
