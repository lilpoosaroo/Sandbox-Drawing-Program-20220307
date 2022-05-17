//Global Variables
boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float  drawingDiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String quitButtonText="Exit Program";
PFont quitButtonFont= createFont("Microsoft Himalaya", 15);
color blue=#94CFF5, whiteReset=#FFFFFF, black=#000000;
color quitButtonColor;
int reset=1;
//
void setup () {
  size(900, 600);
  //Populating Variables
  drawingSurfaceWidth = width*1/2; 
  drawingSurfaceHeight = height*3/4;
  drawingSurfaceX = (width*1/2)-(drawingSurfaceWidth*1/2);
  drawingSurfaceY =height*0;
  drawingDiameter=width*1/100;
  quitButtonWidth=width*1/8;
  quitButtonHeight=height*1/10;
  quitButtonX=width*0;
  quitButtonY=drawingSurfaceHeight-(quitButtonHeight);
  //Paper code
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //Quit button

  //Types of Font
  String [] fontList=PFont.list();
  printArray(fontList);
}//End setup
// 
void draw () {

  //Drawing tool, combined boolean
  if (draw==true && mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight)  line(mouseX, mouseY, pmouseX, pmouseY) ;//End Line Draw
  if (draw==true && mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  //
  if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
    quitButtonColor=#A0457F;
  } else {
    quitButtonColor=#F2B0DA;
  }
  fill(quitButtonColor);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  /*
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(quitButtonFont, 13);
  text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  */

  fill(whiteReset);
}//End draw
//
void keyPressed () {
  if (keyCode=='/') exit();
}//End keyPressed
//
void mousePressed () {
  if (mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    if (draw==false) {
      draw=true;
    } else {
      draw=false;
    }
  }//Button that allows the drawing of ink: paper
  if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End MAIN program
