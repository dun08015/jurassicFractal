int x1=0, y1=0,x2=0, y2=0,temp=0, lineSize=1, transX=0,transY=0, lastX=0,lastY=0;
int maxSize=0;
ArrayList arr= new ArrayList();

void setup() {
  size(500, 500);
  x1=width/2;
  y1=height/2-lineSize;
  x2=x1;
  y2=y1+lineSize;
  arr.add(new Coord(x1,y1,x2,y2));
}

void draw() {
    for(int i= arr.size()-1;i>=0;i--){
    Coord coord1=(Coord) arr.get(i);
    x1=coord1.getX1();
    y1=coord1.getY1();
    x2=coord1.getX2();
    y2=coord1.getY2();
    line(x1,y1,x2,y2);
  }
  
  maxSize=arr.size()-1;
  for(int i= maxSize;i>=0;i--){
    Coord coord1=(Coord) arr.get(i);
    x1=coord1.getX1();
    y1=coord1.getY1();
    x2=coord1.getX2();
    y2=coord1.getY2();
    temp=x1;
    x1=y1;
    y1=500-temp;
    temp=x2;
    x2=y2;
    y2=500-temp;
    arr.add(new Coord(x1,y1,x2,y2));
    transX=250-x1;
  transY=250-y1;
  }
  
  for(int i= arr.size()-1;i>=0;i--){
    Coord coord1=(Coord) arr.get(i);
    x1=coord1.getX1();
    y1=coord1.getY1();
    x2=coord1.getX2();
    y2=coord1.getY2();
    coord1.setX1(x1+transX);
    coord1.setY1(y1+transY);
    coord1.setX2(x2+transX);
    coord1.setY2(y2+transY);
  }
}


class Coord {
  int xCoord1=0,yCoord1=0,xCoord2=0,yCoord2=0;
  
  Coord(int myX1, int myY1,int myX2, int myY2){
    xCoord1=myX1;
    yCoord1=myY1;
    xCoord2=myX2;
    yCoord2=myY2;
  }
  
  int getX1(){
    return xCoord1;
  }
  
  int getY1(){
    return yCoord1;
  }
  
  int getX2(){
    return xCoord2;
  }
  
  int getY2(){
    return yCoord2;
  }
  
  void setX1(int myX1){
    xCoord1=myX1;
  }
  
  void setY1(int myY1){
    yCoord1=myY1;
  }
  
  void setX2(int myX2){
    xCoord2=myX2;
  }
  
  void setY2(int myY2){
    yCoord2=myY2;
  }
  
  
}
