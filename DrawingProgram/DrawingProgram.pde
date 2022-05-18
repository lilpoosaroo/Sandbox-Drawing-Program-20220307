//Global Variables
boolean draw=false;
color blue=#94CFF5, whiteReset=#FFFFFF, black=#000000, purple=#A0457F, lightPink=#F2B0DA;
color quitButtonColor, quitTextColor;
int reset=1;

//Paper
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float  drawingDiameter;
//
//Tool Bar: want it to be a rounded/dark square below the painting surface 
float toolBarX, toolBarY, toolBarWidth, toolBarHeight;
int roundedEdges;
//
//Quit Button
String quitButtonText="Exit Program";
PFont quitButtonFont; //CAN'T POPULATE A FONT IN THE GLOBAL VARIABLES
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
//Second Button
float secondTextX, secontTextY, secondTextWidth, secondTextHeight;
color secondTextButtonColor=#B2F5A6;
String secondTextButtonText="ChaChaCha";
PFont secondTextButtonFont;
//
//Color buttons
float red1X, red1Y, colorButtonWidth, colorButtonHeight;
float orange1X, orange1Y;
float yellow1X, yellow1Y;
float green1X, green1Y;
float blueX, blue1Y;
float purple1X, purple1Y;
float black1X, black1Y;
float grey1X, grey1Y;
float brownX, brown1Y;
//
//Image Buttons
float image1ButtonX, image1ButtonY, imageButtonWidth, imageButtonHeight;
float image2ButtonX, image2ButtonY;
float image3ButtonX, image3ButtonY;
//
//Drawing Buttons
float eraserButtonX, eraserButtonY, drawingButtonWidth, drawingButtonHeight;
float pencilButtonX, pencilButtonY;
//Background Buttons
float backgroundImage1ButtonX, backgroundImage1ButtonY, backgroundImageButtonWidth, backgroundImageButtonHeight;
float backgroundImage2ButtonX, backgroundImage2ButtonY;
float backgroundImage3ButtonX, backgroundImage3ButtonY;
//Images

//
void setup () {
  size(900, 600); //NEED TO CHANGE TO fullScreen();, which means everything else will need to be changed to displayWidth
   //Paper 
  drawingSurfaceWidth = width*1/2; 
  drawingSurfaceHeight = height*3/4;
  drawingSurfaceX = (width*1/2)-(drawingSurfaceWidth*1/2);
  drawingSurfaceY =height*0;
  drawingDiameter=width*1/100;
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //Tool Bar: want it to be a rounded/dark square below the painting surface 
 toolBarWidth=drawingSurfaceWidth*6/4;
 toolBarHeight= drawingSurfaceHeight*1/4;
 toolBarX=drawingSurfaceX-(drawingSurfaceX*1/2);
 toolBarY=height-toolBarHeight-float(roundedEdges); 
 roundedEdges= height*1/50;
 strokeWeight(roundedEdges);
 rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
 strokeWeight(reset);
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
