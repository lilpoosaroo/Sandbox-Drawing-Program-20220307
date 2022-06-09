//Global Variables
float appWidth, appHeight;
float originX, originY;
boolean draw=false;
color blue=#94CFF5, whiteReset=#FFFFFF, black=#000000, purple=#A0457F, lightPink=#F2B0DA;
//color quitButtonColor, quitTextColor;
int reset=1;

//PaperButton
float BUTTONpaperX, BUTTONpaperY, BUTTONpaperWidth, BUTTONpaperHeight;
PImage BUTTONpaperImage;
int BUTTONpaperImageWidth, BUTTONpaperImageHeight;
int largerPaperImageDimension, smallerPaperImageDimension;
float BUTTONpaperIMAGEaDJUSTEDWidth, BUTTONpaperIMAGEaDJUSTEDHeight;
Boolean BUTTONpaperImageWidthLARGER=false, BUTTONpaperImageHeightLARGER=false;
float paperImageWidthRatio=0.0, paperImageHeightRatio=0.0;


//Paper
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float  drawingDiameter;
Boolean paper=false, paperStaysOn=false;
//
//Tool Bar: want it to be a rounded/dark square below the painting surface 
float toolBarX, toolBarY, toolBarWidth, toolBarHeight;
int roundedEdges;
//
/*
//Quit Button
String quitButtonText="Exit Program";
PFont quitButtonFont; //CAN'T POPULATE A FONT IN THE GLOBAL VARIABLES
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
*/
//
//Second Button
float secondTextX, secontTextY, secondTextWidth, secondTextHeight;
//color secondTextButtonColor=#B2F5A6;
//String secondTextButtonText="Start Drawing";
//PFont secondTextButtonFont;
//
/*
//Color buttons
float BUTTONdisplayColorsX, BUTTONdisplayColorsY, BUTTONdisplayColorsWidth, BUTTONdisplayColorsHeight;
PImage BUTTONdisplayColorsImage;
float   BUTTONdisplayColorsImageWidth, BUTTONdisplayColorsImageHeight;

float ColorChoicesBoxX, ColorChoicesBoxY, ColorChoicesBoxWidth, ColorChoicesBoxHeight;
float BUTTONredColorsDisplayX, BUTTONredColorsDisplayY, colorButtonWidth, colorButtonHeight;
float BUTTONorangeColorsDisplayX, BUTTONorangeColorsDisplayY;
/*
float red1X, red1Y;
float orange1X, orange1Y;
float yellow1X, yellow1Y;
float green1X, green1Y;
float blueX, blue1Y;
float purple1X, purple1Y;
float black1X, black1Y;
float grey1X, grey1Y;
float brownX, brown1Y;

color red1=#ED1C24;
*/
//
//Background Image Buttons
float BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight;
float BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y;
float BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y;
float BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y;
Boolean backgroundImage1ON=false, backgroundImage2ON=false, backgroundImage3ON=false ;
color greyReset=#CCCCCC;
//
/*
//Coloring Tool Box & Drawing Buttons
float eraserButtonX, eraserButtonY, drawingButtonWidth, drawingButtonHeight;
float pencilButtonX, pencilButtonY;
*/
//Background image
float backgroundImage1WidthEnlargedAdjusted, backgroundImage1HeightEnlargedAdjusted, backgroundImage1WidthMinimizedAdjusted, backgroundImage1HeightMinimizedAdjusted;
float backgroundImage2WidthEnlargedAdjusted, backgroundImage2HeightEnlargedAdjusted, backgroundImage2WidthMinimizedAdjusted, backgroundImage2HeightMinimizedAdjusted;
float backgroundImage3WidthEnlargedAdjusted, backgroundImage3HeightEnlargedAdjusted, backgroundImage3WidthMinimizedAdjusted, backgroundImage3HeightMinimizedAdjusted;
float backgroundImage1WidthRatio=0.0, backgroundImage1HeightRatio=0.0, backgroundImage2WidthRatio=0.0, backgroundImage2HeightRatio=0.0, backgroundImage3WidthRatio=0.0, backgroundImage3HeightRatio=0.0;
int largerbackgroundImage1Dimension, smallerbackgroundImage1Dimension, largerbackgroundImage2Dimension, smallerbackgroundImage2Dimension, largerbackgroundImage3Dimension, smallerbackgroundImage3Dimension;
PImage backgroundImage1, backgroundImage2, backgroundImage3;
float backgroundImage1X, backgroundImage1Y, backgroundImage2X, backgroundImage2Y, backgroundImage3X, backgroundImage3Y;
float backgroundImage1Width, backgroundImage1Height, backgroundImage2Width, backgroundImage2Height, backgroundImage3Width, backgroundImage3Height;

color peachy=#F5D9C3, yellow1=#FAE68D, yellow2=#FFE44D, yell0w3=#FED480, blue1=#C2E8D1, blue2=#79D5AC, purple1=#695583, purple2=#AC90A7;
color orangeRed1=#BD3328, orange1=#FE845D, orange2=#FA735D, orange3=#F49730, orange4=#C75E25, orange5=#FFA859;
color COLORIMAGE1toolbarLining=#DD979F;
color COLORIMAGE2toolbarLining=blue2;
color COLORIMAGE3toolbarLining=#1D4B3E;
color COLORIMAGE1toolbarFILLING=peachy;
color COLORIMAGE2toolbarFILLING=yell0w3;
color COLORIMAGE3toolbarFILLING=orange5;
//color COLORIMAGE3toolbarFILLING=;

//
void setup () {
  fullScreen();//NEED TO CHANGE TO fullScreen();, which means everything else will need to be changed to displayWidth
  appWidth=width;
  appHeight=height;
  originX=width*0;
  originY=height*0;
  //Calucating larer Dimension and aspect ratio
  ChoosingLargerDimensionCalculatingAspectRatios();
  //Paper 

  drawingSurfaceWidth = width*1/2; 
  drawingSurfaceHeight = height*3/4;
  drawingSurfaceX = (width*1/2)-(drawingSurfaceWidth*1/2);
  drawingSurfaceY =appHeight*1/8;
  drawingDiameter=width*1/100;
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //Tool Bar: want it to be a rounded/dark square below the painting surface 
  roundedEdges= height*1/50;
  toolBarWidth= (drawingSurfaceWidth*1/4)*5/4;
  toolBarHeight= drawingSurfaceHeight;
  toolBarX=(appWidth*0)+ float(roundedEdges);
  toolBarY=appHeight*1/8; 
  //Background Buttons
  BUTTONbackgroundImageWidth= (drawingSurfaceWidth*1/4)*1/2;
  BUTTONbackgroundImageHeight= (drawingSurfaceWidth*1/4)*1/2;
  BUTTONbackgroundImage1X=appWidth*0;
  BUTTONbackgroundImage1Y=appHeight*0;
  BUTTONbackgroundImage2X=(appWidth*0)+BUTTONbackgroundImageWidth;
  BUTTONbackgroundImage2Y=(appHeight*0);
  BUTTONbackgroundImage3X=(appWidth*0)+(BUTTONbackgroundImageWidth*2);
  BUTTONbackgroundImage3Y=(appHeight*0);
  //Images going inside background buttons

  backgroundImage1=loadImage("GOODCOPYbackgroundImage1.png");
  backgroundImage2=loadImage("GOODCOPYbackgroundImage2.png");
  backgroundImage3=loadImage("GOODCOPYbackgroundImage3.png");

  backgroundImage1Width=236;
  backgroundImage1Height=236;
  backgroundImage2Width=1920;
  backgroundImage2Height=1200;
  backgroundImage3Width=785;
  backgroundImage3Height=442;

  backgroundImage1X=appWidth*0;
  backgroundImage1Y=appHeight*0;
  backgroundImage2X=appWidth*0;
  backgroundImage2Y=appHeight*0;
  backgroundImage3X=appWidth*0;
  backgroundImage3Y=appHeight*0;

  //Paper Button Variables
  BUTTONpaperImage=loadImage("CROPPEDPaperButtonImage-129x172.jpg");
  BUTTONpaperImageWidth=129; 
  BUTTONpaperImageHeight=172;
  BUTTONpaperIMAGEaDJUSTEDWidth=BUTTONpaperImageWidth*paperImageWidthRatio;
  BUTTONpaperIMAGEaDJUSTEDHeight= BUTTONpaperImageHeight*paperImageHeightRatio;
  BUTTONpaperWidth=BUTTONbackgroundImageWidth;
  BUTTONpaperHeight=BUTTONbackgroundImageHeight;
  BUTTONpaperX=toolBarX+float(roundedEdges*25/20);
  BUTTONpaperY=toolBarY+float(roundedEdges);

  //Color Tool Box Activator population
  /*

  BUTTONdisplayColorsX= BUTTONpaperX+BUTTONpaperWidth+(float(roundedEdges)*10/50);
  BUTTONdisplayColorsY=BUTTONpaperY;
  BUTTONdisplayColorsWidth=BUTTONpaperWidth;
  BUTTONdisplayColorsHeight=BUTTONpaperHeight;
  BUTTONdisplayColorsImage=loadImage("ColorPalette.png");
  BUTTONdisplayColorsImageWidth=800;
  BUTTONdisplayColorsImageHeight=800;

  // Color Tool Box Population
  ColorChoicesBoxWidth=toolBarWidth;
  ColorChoicesBoxHeight=toolBarWidth*1/2;
  ColorChoicesBoxX=(toolBarX)+toolBarWidth+float(roundedEdges*2);
  ColorChoicesBoxY=toolBarY;
  colorButtonWidth=ColorChoicesBoxWidth*1/4;
  colorButtonHeight=ColorChoicesBoxHeight*1/2;
  BUTTONredColorsDisplayX= ColorChoicesBoxX;
  BUTTONredColorsDisplayY= ColorChoicesBoxY;
  BUTTONorangeColorsDisplayX= ColorChoicesBoxX+colorButtonWidth;
  BUTTONorangeColorsDisplayY= ColorChoicesBoxY+colorButtonHeight;

*/


  /*
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
   */
   
  //Types of Font
  String [] fontList=PFont.list();
  printArray(fontList);
  backgroundImagesSetup ();
 
}//End setup
// 
void draw () {
  //backgroundImagesDraw();
   //BackgroundButtonCode
  
 
//OutLine for background buttons
  noFill();
  rect(BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  rect(BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  rect(BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  //Paper and display colors images
  /*
  noStroke();
  image(BUTTONpaperImage, BUTTONpaperX, BUTTONpaperY, BUTTONpaperWidth*75/100, BUTTONpaperHeight);
  image( BUTTONdisplayColorsImage, BUTTONdisplayColorsX, BUTTONdisplayColorsY, BUTTONdisplayColorsWidth, BUTTONdisplayColorsHeight);
  */
  noFill();
  rect(BUTTONpaperX, BUTTONpaperY, BUTTONpaperWidth, BUTTONpaperHeight);
  //rect(BUTTONdisplayColorsX, BUTTONdisplayColorsY, BUTTONdisplayColorsWidth, BUTTONdisplayColorsHeight);
  fill(whiteReset);
  stroke(black);
  /*
  //Color Choices Display
  rect(ColorChoicesBoxX, ColorChoicesBoxY, ColorChoicesBoxWidth, ColorChoicesBoxHeight);
  fill(red1);
 // rect(BUTTONredDrawingColorX, BUTTONredDrawingColorY, colorButtonWidth, colorButtonHeight);
//  rect(BUTTONorangeDrawingColorX, BUTTONorangeDrawingColorY, colorButtonWidth, colorButtonHeight);
*/

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
  /*
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
   */
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
  //if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  BackgroundButtonsMousepressed ();
  //Paper Button
  if (mouseX>=BUTTONpaperX && mouseX<=BUTTONpaperX+BUTTONpaperWidth && mouseY>= BUTTONpaperY && mouseY<=BUTTONpaperY+BUTTONpaperHeight) {
    if (paper==false) paper=true;
    if (paperStaysOn==false) {
      paperStaysOn=true;
    } else {
      paperStaysOn=false;
    }
  }
}//End mousePressed
//
//End MAIN program
