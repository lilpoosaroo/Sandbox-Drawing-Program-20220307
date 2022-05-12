//Global Variables
boolean draw=false;
float drawingSurfaceX, drawingSurfacY, drawingSurfacWidth, drawingSurfacHeight;
//
void setup (){
 size(900, 600);
 //Populating Variables
 drawingSurfacWidth = width*1/2; 
 drawingSurfacHeight = height*3/4;
 drawingSurfaceX = (width*1/2)-(drawingSurfacWidth*1/2);
 drawingSurfacY =height*0;
 //Paper code
 rect(drawingSurfaceX, drawingSurfacY, drawingSurfacWidth, drawingSurfacHeight);
}//End setup
// 
 void draw (){}//End draw
//
void keyPressed (){
if (keyCode=='/') exit();
}//End keyPressed
//
void mousePressed (){
 if (draw==false) {
 draw=true;
 }else{
 draw=false;
 }
}//End mousePressed
//
//End MAIN program
