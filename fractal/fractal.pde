
/*
lineSize stores the size of each line segment
 pivotX and pivotY are the coordinates around which the
 whole fractal is rotated
 */

int newX=0, newY=0, lineSize=5, arrMax=0, pivotX=0, pivotY=0;
ArrayList arr=new ArrayList();
Coord coord=new Coord(0, 0);
int iteration=20;

void setup() {
  size(1000, 1000);
  arr.add(new Coord(width/2, height/2-lineSize));
  arr.add(new Coord(width/2, height/2));
}

void draw() {
  if (iteration>0) {

    for (int i=0; i<=arr.size()-1;i++) {

      coord=(Coord) arr.get(i);
      if (i<arr.size()-1) {

        Coord coord2=(Coord) arr.get(i+1);
        line(coord.getX(), coord.getY(), coord2.getX(), coord2.getY());
      }
    }
    pivot();

    iteration--;
  }
}

void pivot() {

  coord=(Coord) arr.get(arr.size()-1);
  pivotX=coord.getX();
  pivotY=coord.getY();
  arrMax=arr.size()-1;

  for (int i=arrMax;i>=0;i--) {
    coord=(Coord) arr.get(i);
    newX=coord.getX()-pivotX;
    newY=coord.getY()-pivotY;
    arr.add(new Coord(pivotX+newY, pivotY-newX));
  }
}



class Coord {
  int xCoord=0, yCoord=0;

  Coord(int myX, int myY) {
    xCoord=myX;
    yCoord=myY;
  }

  int getX() {
    return xCoord;
  }

  int getY() {
    return yCoord;
  }
}
