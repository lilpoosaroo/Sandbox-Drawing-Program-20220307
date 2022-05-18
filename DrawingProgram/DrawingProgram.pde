//Global Variables
boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float  drawingDiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color blue=#94CFF5, whiteReset=#FFFFFF, black=#000000, purple=#A0457F, lightPink=#F2B0DA;
color quitButtonColor, quitTextColor;
int reset=1;
//
String quitButtonText="Exit Program";
PFont quitButtonFont; //CAN'T POPULATE A FONT IN THE GLOBAL VARIABLES
//
float secondTextX, secontTextY, secondTextWidth, secondTextHeight;
color secondTextButtonColor=#B2F5A6;
String secondTextButtonText="ChaChaCha";
PFont secondTextButtonFont;
//
void setup () {
  size(900, 600);
  //Populating Variables
  drawingSurfaceWidth = width*1/2; 
  drawingSurfaceHeight = height*3/4;
  drawingSurfaceX = (width*1/2)-(drawingSurfaceWidth*1/2);
  drawingSurfaceY =height*0;
  drawingDiameter=width*1/100;
  //Paper code
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //Quit button
  quitButtonFont= createFont("Microsoft Himalaya", 15);
  quitButtonWidth=width*1/8;
  quitButtonHeight=height*1/10;
  quitButtonX=width*0;
  quitButtonY=drawingSurfaceHeight-(quitButtonHeight);
  //Second Text Button
  secondTextX=width*0;
  secontTextY=drawingSurfaceHeight-(quitButtonHeight*2);
  secondTextWidth=quitButtonWidth;
  secondTextHeight=quitButtonHeight;
  secondTextButtonFont=createFont("Segoe UI Semibold Italic", 25);
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
    quitButtonColor=purple;
    quitTextColor=whiteReset;
  } else {
    quitButtonColor=lightPink;
    quitTextColor=black;
  }
  fill(quitButtonColor);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(quitTextColor);
  textAlign(CENTER, CENTER);
  textFont(quitButtonFont, 25);
  text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(whiteReset);
  //
  //Second rectangle with more text
  fill(secondTextButtonColor);
  rect(secondTextX, secontTextY, secondTextWidth, secondTextHeight);
  fill(black); 
  textAlign(CENTER, CENTER);
  textFont(secondTextButtonFont, 14);
  text(secondTextButtonText, secondTextX, secontTextY, secondTextWidth, secondTextHeight);
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
  //
  if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End MAIN program
