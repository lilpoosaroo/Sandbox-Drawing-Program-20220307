//Global Variables
float appWidth, appHeight;
boolean draw=false;
color blue=#94CFF5, whiteReset=#FFFFFF, black=#000000, purple=#A0457F, lightPink=#F2B0DA;
color quitButtonColor, quitTextColor;
int reset=1;

//Paper
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float  drawingDiameter;
Boolean paper=false;
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
String secondTextButtonText="Start Drawing";
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
//Background Image Buttons
float image1ButtonX, image1ButtonY, imageButtonWidth, imageButtonHeight;
float image2ButtonX, image2ButtonY;
float image3ButtonX, image3ButtonY;
PImage image1, image2, image3;
float image1Width, image1Height, image2Width, image2Height, image3Width, image3Height;
float image1WidthEnlargedAdjusted, image1HeightEnlargedAdjusted, image1WidthMinimizedAdjusted, image1HeightMinimizedAdjusted;
float image2WidthEnlargedAdjusted, image2HeightEnlargedAdjusted, image2WidthMinimizedAdjusted, image2HeightMinimizedAdjusted;
float image3WidthEnlargedAdjusted, image3HeightEnlargedAdjusted, image3WidthMinimizedAdjusted, image3HeightMinimizedAdjusted;
float image1WidthRatio=0.0, image1HeightRatio=0.0, imag2WidthRatio=0.0, image2HeightRatio=0.0, image3WidthRatio=0.0, image3HeightRatio=0.0;
int largerImage1Dimension, smallerImage1Dimension, largerImage2Dimension, smallerImage2Dimension, largerImage3Dimension, smallerImage3Dimension;
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
  size(900, 600);//NEED TO CHANGE TO fullScreen();, which means everything else will need to be changed to displayWidth
  appWidth=width;
  appHeight=height;

  //Paper 

  drawingSurfaceWidth = width*1/2; 
  drawingSurfaceHeight = height*3/4;
  drawingSurfaceX = (width*1/2)-(drawingSurfaceWidth*1/2);
  drawingSurfaceY =height*0;
  drawingDiameter=width*1/100;
  //Tool Bar: want it to be a rounded/dark square below the painting surface 
  roundedEdges= height*1/50;
  toolBarWidth=drawingSurfaceWidth*1/4;
  toolBarHeight= drawingSurfaceHeight*6/4;
  toolBarX=(appWidth*0)+ float(roundedEdges);
  toolBarY=appHeight*1/4; 
  strokeWeight(roundedEdges);
  rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
  strokeWeight(reset);
  //Background Buttons
  backgroundImageButtonWidth= toolBarWidth*1/2;
  backgroundImageButtonHeight= toolBarWidth*1/2;
  image1ButtonX=appWidth*0;
  image1ButtonY=appHeight*0;
  image2ButtonX=(appWidth*0)+backgroundImageButtonWidth;
  image2ButtonY=(appHeight*0);
  image3ButtonX=(appWidth*0)+(backgroundImageButtonWidth*2);
  image3ButtonY=(appHeight*0);
  rect(image1ButtonX, image1ButtonY, imageButtonWidth, imageButtonHeight);
  rect(image2ButtonX, image2ButtonY, imageButtonWidth, imageButtonHeight);
  rect(image3ButtonX, image3ButtonY, imageButtonWidth, imageButtonHeight);
  image1Width=236;
  image1Height=236;
  image2Width=1920;
  image2Height=1200;
  image3Width=785;
  image3Height=442;
  image1=loadImage("CatsNFlowers-236x236.jpg");
  image2=loadImage("Doodles-1920x1200.jpg");
  image3=loadImage("PurpleSky-785x442.jpg");
  image(image1, image1ButtonX, image1ButtonY, imageButtonWidth, imageButtonHeight );
  image(image2, image2ButtonX, image2ButtonY, imageButtonWidth, imageButtonHeight);
  image(image3, image3ButtonX, image3ButtonY, imageButtonWidth, imageButtonHeight);


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
  //Paper Button
  if (paper==true) {
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    paper=false;
  }

  //
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
  //Paper
  if (mouseX>=secondTextX &&mouseX<=secondTextX+secondTextWidth && mouseY>=secontTextY && mouseY<=secontTextY+secondTextHeight) paper=true;

  //
  if (mouseX>= drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    if (draw==false) {
      draw=true;
    } else {
      draw=false;
    }
  }//Button that allows the drawing of ink: paper
  //
  if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
}//End mousePressed
//
//End MAIN program
