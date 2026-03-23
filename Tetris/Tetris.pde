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
//int[] check;
int cSpace;
int xCount;
int[] aX; //coords of the 4 tiles of a tetromino (- the anchor point) key: 0,1 = a1; 2,3 = a2; 4,5 = a3; anchorX,anchorY = a4
int[] aY;
int max;

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
  //check = new int[10];
  //jy = scrH % 16;
  aX = new int[4];
  aY = new int[3];
  max = 200;
}




void draw() {
  background(#C8C8C8);
  frm = frameCount;
//println(aX);
  

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

aX[1] = anchorX+1;
aY[1] = anchorY;
for(int n = 0; n<3; n++){
println("x",n,": ",aX[n]);
println("y",n,": ",aY[n]);
}
  //grid[anchorX][anchorY] = 1;
  //grid[anchorX][anchorY] = 0;

  if (frm % interval == 0 && (anchorY)!=15) {
    j++;
    if (anchorY>=1) {
       //grid[anchorX+1][anchorY] = 0;
    }
    jy=(j*boxSize)+ scrH % 16;
  }
  fill(255, 125, 150);
  
  
  for(int check = 1; check<3; check++) {
    grid[aX[check]][aY[check]] = check+2;
  }
  
  //check 
  for (int y = 0; y < 16; y++) {
    xCount = 0;
    for (int x = 0; x < 10; x++) {
      
      //block display

        if (grid[x][y] != 0) {
        fill(round(abs(sin(PI/(grid[x][y])))*max),round(abs(cos(PI/(grid[x][y]))*max)),round(abs(sin(PI/grid[x][y]))*max));
        rect(offset+(x*boxSize), (scrH % 16) + y*boxSize, boxSize, boxSize);
        
        //line clearing
        if(cSpace == grid[x][y]) {
          xCount++;
        }
        cSpace = grid[x][y];
      }
    }
    if(xCount==10) {
    for(int x2 = 0; x2<10; x2++) {
      grid[x2][y] = 0;
    }
  }
  }


  if (anchorY == 15 || grid[anchorX][anchorY+1]==1) {
    j = 0;
    grid[anchorX][anchorY] = 1;
    grid[anchorX+1][anchorY] = 1;
  } else {
    grid[anchorX][anchorY] = 0;
    grid[anchorX+1][anchorY] = 0;
  }

  anchorY = j;

  grid[anchorX][anchorY] = 2;
  if (anchorY > 0) {

  }


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
      int i = 0;
      for(int j = 0; i<3; j++){
        if(aX[j]+1!=10) {

      if (anchorX != 9 && grid[anchorX+1][anchorY]!=1 && aX[j] != 9 && grid[aX[j]+1][aY[j]] == 0) {
      i++;
      }
        }
      }
      if(i==3) {
        grid[anchorX][anchorY] = 0;
        anchorX++;
      }
    }
  }
  if (key=='c') {
    grid = new int[10][16];
    }
  if (key=='e') {
    for(int n = 0; n<3; n++) {
      if(aX[n] != 0 && aY[n] != 0) {
    rot(n, 1);
      }
    }
    }
  }
  
  void rot(int point, int dir) {
    println("old: ",aX[point],", ",aY[point]);
    int aX0 = aX[point]-anchorX;
    int aY0 = aY[point]-anchorY;
    int aX02 = -1*dir*aY0;
    int aY02 = dir*aX0;
    aX[point] = aX02+anchorX;
    aY[point] = aY02+anchorY;
    println("new: ",aX[point],", ",aY[point]);
  }
