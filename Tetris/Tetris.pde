//playfield
int[][] grid;
int scrH;
int scrW;
float cH;
float cW;
float cR;
float boxSize;
int j;
int frm;
float interval;
int anchorX;
int anchorY;
float offset;
float jy;
float px;
float py;
int[] check;

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
  interval = 10;
  offset = (scrW/2-5*boxSize);
  //playfield
  grid = new int[10][16];
  check = new int[10];
  //jy = scrH % 16;
}


void draw() {
  background(#C8C8C8);
  frm = frameCount;

  //grid[anchorX][anchorY] = 0;

  //playfield
  rect(offset, 0, 10*boxSize, scrH);
  for (int i =0; i<17; i++) {
    line(offset, (scrH % 16) + i*boxSize, offset+(10*boxSize), (scrH % 16) + i*boxSize);
    if (i<11) {
      line(offset+(i*boxSize), 0, offset+(i*boxSize), scrH);
    }
  }

  //score and next piece
  rect(3*scrW/10+cW+(((3*scrW/10)-(3*scrH/10))/2), cH, 3*cH/2, 3*cH/2);


  //pieces

  //z piece



  //grid[anchorX][anchorY] = 1;
  //grid[anchorX][anchorY] = 0;

  if (frm % interval == 0 && (anchorY)!=15) {
    j++;
    if (anchorY>=1) {
      //grid[anchorX][anchorY-1] = 0;
    }
    jy=(j*boxSize)+ scrH % 16;
  }
  fill(255, 125, 150);
  
  //check 
  for (int x = 0; x < 10; x++) {
    for (int y = 0; y < 16; y++) {
      if (grid[x][y] == 2 ) {
        fill(150, 125, 255);
      } else fill(255, 125, 150);
      if (grid[x][y] != 0) {
        rect(offset+(x*boxSize), (scrH % 16) + y*boxSize, boxSize, boxSize);
      }
    }
  }

  if (anchorY == 15 || grid[anchorX][anchorY+1]==1) {
    j = 0;
  } else {
    grid[anchorX][anchorY] = 0;
    //grid[anchorX-1][anchorY] = 0;
  }

  anchorY = j;

  grid[anchorX][anchorY] = 1;
  //grid[anchorX-1][anchorY] = 3;
  if (anchorY > 0) {
    //grid[anchorX][anchorY-1] = 3;
    //grid[anchorX+1][anchorY+1] = 3;
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

  //grid[8][7] =  1;
  //grid[9][7] =  1;
  fill(255, 255, 255);
} //END OF DRAW

void keyPressed() {
  if (key==CODED) {
    if (keyCode==LEFT) {
      if (anchorX > 0 && grid[anchorX-1][anchorY]==0) {
        grid[anchorX][anchorY] = 0;
        anchorX--;
      }
    } else if (keyCode==RIGHT) {
      if (anchorX != 9 && grid[anchorX+1][anchorY]!=1) {
        grid[anchorX][anchorY] = 0;
        anchorX++;
      }
    }
  }
  if (key=='c') {
    grid = new int[10][16];
  }
}
