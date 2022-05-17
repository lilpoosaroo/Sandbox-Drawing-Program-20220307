//Global Variables
boolean draw=false;
float drawingSurfaceX, drawingSurfacY, drawingSurfacWidth, drawingSurfacHeight;
float  drawingDiameter;
color blue=#94CFF5;
//
void setup () {
  size(900, 600);
  //Populating Variables
  drawingSurfacWidth = width*1/2; 
  drawingSurfacHeight = height*3/4;
  drawingSurfaceX = (width*1/2)-(drawingSurfacWidth*1/2);
  drawingSurfacY =height*0;
   drawingDiameter=width*1/100;
  //Paper code
  rect(drawingSurfaceX, drawingSurfacY, drawingSurfacWidth, drawingSurfacHeight);
}//End setup
// 
void draw () {
  
  //Line Drawing Tool
  if (draw==true && mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfacWidth && mouseY>=drawingSurfacY && mouseY<=drawingSurfacY+drawingSurfacHeight)  line(mouseX, mouseY, pmouseX, pmouseY) ;//End Line Draw
  //Circle Drawing Tool
  if (draw==true && mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfacWidth && mouseY>=drawingSurfacY && mouseY<=drawingSurfacY+drawingSurfacHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
}//End draw
//
void keyPressed () {
  if (keyCode=='/') exit();
}//End keyPressed
//
void mousePressed () {
  if (mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfacWidth && mouseY>=drawingSurfacY && mouseY<=drawingSurfacY+drawingSurfacHeight) {
  if (draw==false) {
    draw=true;
  } else {
    draw=false;
  }
  
  }//Button that allows the drawing of ink: paper
  
}//End mousePressed
//
//End MAIN program
