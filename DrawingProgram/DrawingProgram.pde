//Global Variables
float appWidth, appHeight;
float originX, originY;
color whiteReset=#FFFFFF, black=#000000, greyReset=#CCCCCC;
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
Boolean paper=false;
//
//Tool Bar: want it to be a rounded/dark square below the painting surface 
float toolBarX, toolBarY, toolBarWidth, toolBarHeight;
int roundedEdges;
color toolbarLining, toolbarFILLING;
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
//Color Pallete Variables
float ColorChoicesBoxX, ColorChoicesBoxY, ColorChoicesBoxWidth, ColorChoicesBoxHeight;
float BUTTONredDrawingColorX, BUTTONredDrawingColorY, colorButtonWidth, colorButtonHeight;
float BUTTONorangeDrawingColorX, BUTTONorangeDrawingColorY;
float BUTTONyellowDrawingColorX, BUTTONyellowDrawingColorY;
float BUTTONgreenDrawingColorX, BUTTONgreenDrawingColorY;
float BUTTONblueDrawingColorX, BUTTONblueDrawingColorY;
float BUTTONpurpleDrawingColorX, BUTTONpurpleDrawingColorY;
float BUTTONgreyDrawingColorX, BUTTONgreyDrawingColorY;
float BUTTONblackDrawingColorX, BUTTONblackDrawingColorY;
color redBUTTONcolor=#FF081E, orangeBUTTONcolor=#FF8C1E, yellowBUTTONcolor=#FFF11E, greenBUTTONcolor=#5BBC00;
color blueBUTTONcolor=#00BDF3, purpleBUTTONcolor=#7A1A7D, greyBUTTONcolor=greyReset, blackBUTTONcolor=black;
color colorOfDrawingTool;
Boolean colorChoicesON=false;
//
//Background Image Buttons
float BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight;
float BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y;
float BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y;
float BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y;
Boolean backgroundImage1ON=false, backgroundImage2ON=false, backgroundImage3ON=false, originalGreyBackgroundON=true;

//
//
// Drawing Tool Buttons
boolean drawOnPaper=false, draw=false;
Boolean pencilON=true, eraserON=false, stampON=false;
float drawingButtonWidth, drawingButtonHeight;
float pencilButtonX, pencilButtonY;
int pencilImageHeight, pencilImageWidth;
int largerPencilImageDimension, smallerPencilImageDimension;
float widthRatioPencilImage, heightRatioPencilImage;
Boolean pencilImageWidthLarger= false, pencilImageHeightLarger = false;
PImage BUTTONpencilImage;
float eraserButtonX, eraserButtonY; 
color eraserColor;
PImage BUTTONeraserImage;
float stampBUTTONX, stampBUTTONY;
PImage stampBUTTONimage;
float roundStampBUTTONX, roundStampBUTTONY, roundStampWidth, roundStampHeight;
float roundStampCircleX, roundStampCircleY, roundStampCircleDiameter; 
Boolean roundStampON=false;
float squareStampBUTTONX, squareStampBUTTONY, squareStampWidth, squareStampHeight;
float squareStampSquareX, squareStampSquareY, squareStampSquareWidth, squareStampSquareHeight;
Boolean squareStampON=false;
float triangleStampBUTTONX, triangleStampBUTTONY, triangleStampWidth, triangleStampHeight;
float triangleStampTriangleX1, triangleStampTriangleY1, triangleStampTriangleX2, triangleStampTriangleY2, triangleStampTriangleX3, triangleStampTriangleY3;
Boolean triangleStampON=false;
//
//Background image
float backgroundImage1WidthEnlargedAdjusted, backgroundImage1HeightEnlargedAdjusted, backgroundImage1WidthMinimizedAdjusted, backgroundImage1HeightMinimizedAdjusted;
float backgroundImage2WidthEnlargedAdjusted, backgroundImage2HeightEnlargedAdjusted, backgroundImage2WidthMinimizedAdjusted, backgroundImage2HeightMinimizedAdjusted;
float backgroundImage3WidthEnlargedAdjusted, backgroundImage3HeightEnlargedAdjusted, backgroundImage3WidthMinimizedAdjusted, backgroundImage3HeightMinimizedAdjusted;
float backgroundImage1WidthRatio=0.0, backgroundImage1HeightRatio=0.0, backgroundImage2WidthRatio=0.0, backgroundImage2HeightRatio=0.0, backgroundImage3WidthRatio=0.0, backgroundImage3HeightRatio=0.0;
int largerbackgroundImage1Dimension, smallerbackgroundImage1Dimension, largerbackgroundImage2Dimension, smallerbackgroundImage2Dimension, largerbackgroundImage3Dimension, smallerbackgroundImage3Dimension;
PImage backgroundImage1, backgroundImage2, backgroundImage3;
float backgroundImage1X, backgroundImage1Y, backgroundImage2X, backgroundImage2Y, backgroundImage3X, backgroundImage3Y;
float backgroundImage1Width, backgroundImage1Height, backgroundImage2Width, backgroundImage2Height, backgroundImage3Width, backgroundImage3Height;
color backgroundImage2BackgroundColor=#C2E8D3, backgroundImage3BackgroundColor=#0D3831;
color red1=#ED1C24, yellow1=#FAE68D, green1=#1D4B3E;
color peachy=#F5D9C3, yellow2=#FFE44D, yell0w3=#FED480, blue1=#C2E8D1, blue2=#79D5AC, purple1=#695583, purple2=#AC90A7;
color orangeRed1=#BD3328, orange1=#FE845D, orange2=#FA735D, orange3=#F49730, orange4=#C75E25, orange5=#FFA859;
color COLORIMAGE1toolbarLining=#DD979F;
color COLORIMAGE2toolbarLining=blue2;
color COLORIMAGE3toolbarLining=green1;
color COLORIMAGE1toolbarFILLING=peachy;
color COLORIMAGE2toolbarFILLING=yell0w3;
color COLORIMAGE3toolbarFILLING=orange5;
//Music Box
float musicBoxX, musicBoxY, musicBoxWidth, musicBoxHeight;
float playBUTTONtriangleX1, playBUTTONtriangleY1, playBUTTONtriangleX2, playBUTTONtriangleY2, playBUTTONtriangleX3, playBUTTONtriangleY3;
float playBUTTONcircleX, playBUTTONcircleY, playBUTTONdiameter;
 float pauseBUTTONline1X1, pauseBUTTONline1Y1, pauseBUTTONline1X2, pauseBUTTONline1Y2;
 float pauseBUTTONline2X1, pauseBUTTONline2Y1, pauseBUTTONline2X2, pauseBUTTONline2Y2;
float forwardSkipBUTTONtriangleX1, forwardSkipBUTTONtriangleY1, forwardSkipBUTTONtriangleX2, forwardSkipBUTTONtriangleY2, forwardSkipBUTTONtriangleX3, forwardSkipBUTTONtriangleY3;
float fowardSkipbUTTONlineX, forwardSkipBUTTONlineY;
float backwardSkipBUTTONtriangleX1, backwardSkipBUTTONtriangleY1, backwardSkipBUTTONtriangleX2, backwardSkipBUTTONtriangleY2, backwardSkipBUTTONtriangleX3, backwardSkipBUTTONtriangleY3;
float backwardSkipbUTTONlineX, backwardSkipBUTTONlineY;

//
void setup () {
  fullScreen();//NEED TO CHANGE TO fullScreen();, which means everything else will need to be changed to displayWidth
  originX=width*0;
  originY=height*0;
  appWidth=width;
  appHeight=height;
  //Display Orientation: Landscape (displayWidth>displayHeight), not portrait or square
  //If our width is larger than our height we are in landscape mode
  //if  ( displayWidth .+ displayHeight) {println("landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruction="turn your phone kiddo";
  String orientation = (appWidth >= appHeight) ? ls:p; //Ternary operator
  println(DO, orientation);

  if (orientation==ls) {
    println("Good to go :)");
  } else {
    println(instruction);
    appWidth *=0; //this is called an assingment operator; this means appWidth=appWidth*0, thi
    appHeight *=0;
  }
  println("App Geometry is:", "\t AppWidth:", appWidth, "\t AppHeight:", appHeight);
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
  /*
  //Color Tool Box Activator population
   
   
   BUTTONdisplayColorsX= BUTTONpaperX+BUTTONpaperWidth+(float(roundedEdges)*10/50);
   BUTTONdisplayColorsY=BUTTONpaperY;
   BUTTONdisplayColorsWidth=BUTTONpaperWidth;
   BUTTONdisplayColorsHeight=BUTTONpaperHeight;
   BUTTONdisplayColorsImage=loadImage("ColorPalette.png");
   BUTTONdisplayColorsImageWidth=800;
   BUTTONdisplayColorsImageHeight=800;
   */

  // Color Choices Box Population
  ColorChoicesBoxHeight=BUTTONbackgroundImageHeight;
  colorButtonWidth=BUTTONbackgroundImageWidth*1/4;
  colorButtonHeight=ColorChoicesBoxHeight*1/2;
  ColorChoicesBoxWidth=BUTTONbackgroundImageWidth;

  ColorChoicesBoxX=BUTTONpaperX+BUTTONpaperWidth+(roundedEdges*1/2);
  ColorChoicesBoxY=BUTTONpaperY;
  BUTTONredDrawingColorX= ColorChoicesBoxX;
  BUTTONredDrawingColorY= ColorChoicesBoxY;
  BUTTONorangeDrawingColorX= ColorChoicesBoxX+colorButtonWidth;
  BUTTONorangeDrawingColorY= ColorChoicesBoxY;
  BUTTONyellowDrawingColorX= ColorChoicesBoxX+(colorButtonWidth*2);
  BUTTONyellowDrawingColorY= ColorChoicesBoxY;
  BUTTONgreenDrawingColorX= ColorChoicesBoxX+(colorButtonWidth*3);
  BUTTONgreenDrawingColorY= ColorChoicesBoxY;
  BUTTONblueDrawingColorX= ColorChoicesBoxX;
  BUTTONblueDrawingColorY= ColorChoicesBoxY+colorButtonHeight;
  BUTTONpurpleDrawingColorX= ColorChoicesBoxX+colorButtonWidth;
  BUTTONpurpleDrawingColorY= ColorChoicesBoxY+colorButtonHeight;
  BUTTONgreyDrawingColorX=ColorChoicesBoxX+(colorButtonWidth*2);
  BUTTONgreyDrawingColorY=ColorChoicesBoxY+colorButtonHeight;
  BUTTONblackDrawingColorX=ColorChoicesBoxX+(colorButtonWidth*3);
  BUTTONblackDrawingColorY=ColorChoicesBoxY+colorButtonHeight;




  //Coloring Tools
  pencilImageWidth=197;
  pencilImageHeight=192;
  drawingButtonWidth=drawingSurfaceWidth*39/640;
  drawingButtonHeight=drawingSurfaceWidth*1/16;
  pencilButtonX=BUTTONpaperX;
  pencilButtonY=BUTTONpaperY+BUTTONpaperHeight+(roundedEdges*2);
  BUTTONpencilImage=loadImage("BUTTONpencilimage-197x192.jpg");
  eraserButtonX=pencilButtonX+drawingButtonWidth+roundedEdges;
  eraserButtonY=pencilButtonY; 
  BUTTONeraserImage=loadImage("EraserImage-564x545.jpg");
  //Stamp Variables
  stampBUTTONX= eraserButtonX+drawingButtonWidth+roundedEdges;
  stampBUTTONY=eraserButtonY;
  stampBUTTONimage=loadImage("SMALLERstampIcon.jpg");
  //Round Stamp variables
  roundStampBUTTONX= stampBUTTONX+drawingButtonWidth+roundedEdges*55/100;
  roundStampBUTTONY=stampBUTTONY-roundedEdges*1/3; 
  roundStampWidth=drawingButtonWidth*1/2;
  roundStampHeight=drawingButtonHeight*1/3; 
  roundStampCircleX=roundStampBUTTONX+(roundStampWidth*1/2);
  roundStampCircleY=roundStampBUTTONY+(roundStampHeight*1/2);
  roundStampCircleDiameter=roundStampWidth*1/2;
  //Sqaure stamp variables
  squareStampBUTTONX=roundStampBUTTONX;
  squareStampBUTTONY=roundStampBUTTONY+roundStampHeight+roundedEdges*1/3;
  squareStampWidth=roundStampWidth;
  squareStampHeight=roundStampHeight;
  squareStampSquareWidth=squareStampWidth*1/2;
  squareStampSquareHeight=squareStampHeight-squareStampHeight*45/100;
  squareStampSquareX=squareStampBUTTONX+(squareStampWidth*1/2)-squareStampSquareWidth*1/2;
  squareStampSquareY=squareStampBUTTONY+(squareStampHeight*1/2)-squareStampSquareHeight*1/2;

  //Traingle stamp variables
  triangleStampBUTTONX=squareStampBUTTONX;
  triangleStampBUTTONY=squareStampBUTTONY+squareStampHeight+roundedEdges*1/3;
  triangleStampWidth=squareStampWidth;
  triangleStampHeight=squareStampHeight;
  triangleStampTriangleX1=triangleStampBUTTONX+(triangleStampWidth*1/2)-triangleStampWidth*1/4;
  triangleStampTriangleY1=triangleStampBUTTONY+triangleStampHeight-triangleStampHeight*1/4;
  triangleStampTriangleX2=triangleStampBUTTONX+triangleStampWidth*1/2;
  triangleStampTriangleY2=triangleStampBUTTONY+triangleStampHeight*20/100;
  triangleStampTriangleX3=triangleStampBUTTONX+(triangleStampWidth*1/2)+triangleStampWidth*1/4;
  triangleStampTriangleY3=triangleStampTriangleY1;
  
  //
  //Music Box
  musicBoxX=toolBarX;
  musicBoxY=toolBarY+toolBarHeight+(roundedEdges);
  musicBoxWidth=toolBarWidth;
  musicBoxHeight=appHeight-toolBarY-toolBarHeight-(roundedEdges*2);
  playBUTTONcircleX=musicBoxX+(musicBoxWidth*1/2);
  playBUTTONcircleY=musicBoxY+(musicBoxHeight*73/100);
  playBUTTONdiameter=musicBoxWidth*1/8;
  playBUTTONtriangleX1=playBUTTONcircleX-(playBUTTONdiameter*1/8);
  playBUTTONtriangleY1=playBUTTONcircleY-(playBUTTONdiameter*2/8);
  playBUTTONtriangleX2=playBUTTONtriangleX1;
  playBUTTONtriangleY2=playBUTTONcircleY+(playBUTTONdiameter*2/8);
  playBUTTONtriangleX3=playBUTTONcircleX+(playBUTTONdiameter*2/8);
  playBUTTONtriangleY3=playBUTTONcircleY;
   line(pauseBUTTONline1X1, pauseBUTTONline1Y1, pauseBUTTONline1X2, pauseBUTTONline1Y2);
  line(pauseBUTTONline2X1, pauseBUTTONline2Y1, pauseBUTTONline2X2, pauseBUTTONline2Y2);


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
  //String [] fontList=PFont.list();
  // printArray(fontList);
}//End setup
// 
void draw () {
  //Grey Background code
  if (originalGreyBackgroundON==true) {
    background(greyReset);  
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  } else {
  }
  //Background Image 1 code
  backgroundImage1Draw();
  //Background Image 2 Code
  if (backgroundImage2ON==true) {
    background(backgroundImage2); 
    fill(greyReset);
    rect(BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  } else {
  }
  //Background Image 3 Code
  if (backgroundImage3ON==true) {
    background(backgroundImage3); 
    fill(greyReset);
    rect(BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  } else {
  }

  //Tool Bar
  ToolBarCode ();
  //OutLine for background buttons
  noFill();
  rect(BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  rect(BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  rect(BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  //Paper Button Image
  image(BUTTONpaperImage, BUTTONpaperX, BUTTONpaperY, BUTTONpaperWidth*75/100, BUTTONpaperHeight);
  //Pencil Code
  image(BUTTONpencilImage, pencilButtonX, pencilButtonY, drawingButtonWidth, drawingButtonHeight);
  if (pencilON==true) {
    strokeWeight(roundedEdges*1/2);
  } else {
    strokeWeight(reset);
  }
  noFill();
  stroke(colorOfDrawingTool);
  rect((pencilButtonX+drawingButtonWidth*1/2)-(drawingButtonWidth*110/100*1/2), (pencilButtonY+drawingButtonHeight*1/2)-(drawingButtonHeight*110/100*1/2), drawingButtonWidth*110/100, drawingButtonHeight*110/100);
  fill(whiteReset);
  strokeWeight(reset);
  stroke(black);
  //
  //Eraser Code
  image(BUTTONeraserImage, eraserButtonX, eraserButtonY, drawingButtonWidth, drawingButtonHeight);
  if (eraserON==true) {
    strokeWeight(roundedEdges*1/2);
  } else {
    strokeWeight(reset);
  }
  noFill();
  stroke(black);
  rect((eraserButtonX+drawingButtonWidth*1/2)-(drawingButtonWidth*110/100*1/2), (eraserButtonY+drawingButtonHeight*1/2)-(drawingButtonHeight*110/100*1/2), drawingButtonWidth*110/100, drawingButtonHeight*110/100);
  fill(whiteReset);
  strokeWeight(reset);
  //
  //Stamp Code 
  image(stampBUTTONimage, stampBUTTONX, stampBUTTONY, drawingButtonWidth, drawingButtonHeight);
  noFill();
  stroke(colorOfDrawingTool);
  if (stampON==true) {
    strokeWeight(roundedEdges*1/2);
  } else {
    strokeWeight(reset);
  }
  rect((stampBUTTONX+drawingButtonWidth*1/2)-(drawingButtonWidth*110/100*1/2), (stampBUTTONY+drawingButtonHeight*1/2)-(drawingButtonHeight*110/100*1/2), drawingButtonWidth*110/100, drawingButtonHeight*110/100);
   if (stampON==true && roundStampON==true) {
    strokeWeight(roundedEdges*1/6);
  } else {
    strokeWeight(reset);
  }
  rect(roundStampBUTTONX, roundStampBUTTONY, roundStampWidth, roundStampHeight);
  if (stampON==true && squareStampON==true) {
    strokeWeight(roundedEdges*1/6);
  } else {
    strokeWeight(reset);
  }
  rect(squareStampBUTTONX, squareStampBUTTONY, squareStampWidth, squareStampHeight);
  if (stampON==true && triangleStampON==true ) {
    strokeWeight(roundedEdges*1/6);
  } else {
    strokeWeight(reset);
  }
  rect(triangleStampBUTTONX, triangleStampBUTTONY, triangleStampWidth, triangleStampHeight);
  fill(colorOfDrawingTool);
  strokeWeight(reset); 
  ellipse(roundStampCircleX, roundStampCircleY, roundStampCircleDiameter, roundStampCircleDiameter);
  rect(squareStampSquareX, squareStampSquareY, squareStampSquareWidth, squareStampSquareHeight);
  triangle(triangleStampTriangleX1, triangleStampTriangleY1, triangleStampTriangleX2, triangleStampTriangleY2, triangleStampTriangleX3, triangleStampTriangleY3);
  fill(whiteReset);
  stroke(black);



  //Paper Button if statement
  if (paper==true) {
    if (originalGreyBackgroundON==true) {
      originalGreyBackgroundON=false;
      toolbarLining=black;
      toolbarFILLING=whiteReset;
    }
    if (backgroundImage1ON==true) {
      backgroundImage1ON=false;
      fill(greyReset);
      rect(BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
      fill(whiteReset);
      toolbarLining=COLORIMAGE1toolbarLining;
      toolbarFILLING=COLORIMAGE1toolbarFILLING;
    }
    if ( backgroundImage2ON==true) {
      backgroundImage2ON=false;
      fill(greyReset);
      rect(BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
      fill(whiteReset);
      toolbarLining=COLORIMAGE2toolbarLining;
      toolbarFILLING=COLORIMAGE2toolbarFILLING;
    }
    if (backgroundImage3ON==true) {
      backgroundImage3ON=false;
      fill(greyReset);
      rect(BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
      fill(whiteReset);
      toolbarLining=COLORIMAGE3toolbarLining;
      toolbarFILLING=COLORIMAGE3toolbarFILLING;
    }
    //Drawing Tools can now only draw in the paper
    fill(whiteReset);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    paper=false;
  }




  //Color Pallette Image 
  //image(BUTTONdisplayColorsImage, BUTTONdisplayColorsX, BUTTONdisplayColorsY, BUTTONdisplayColorsWidth, BUTTONdisplayColorsHeight);
  //Color Choices Display
  noStroke();
  rect(ColorChoicesBoxX, ColorChoicesBoxY, ColorChoicesBoxWidth, ColorChoicesBoxHeight);
  fill( redBUTTONcolor);
  rect(BUTTONredDrawingColorX, BUTTONredDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(orangeBUTTONcolor);
  rect(BUTTONorangeDrawingColorX, BUTTONorangeDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(yellowBUTTONcolor);
  rect(BUTTONyellowDrawingColorX, BUTTONyellowDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(greenBUTTONcolor);
  rect(BUTTONgreenDrawingColorX, BUTTONgreenDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(blueBUTTONcolor);
  rect(BUTTONblueDrawingColorX, BUTTONblueDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(purpleBUTTONcolor);
  rect(BUTTONpurpleDrawingColorX, BUTTONpurpleDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(greyBUTTONcolor);
  rect(BUTTONgreyDrawingColorX, BUTTONgreyDrawingColorY, colorButtonWidth, colorButtonHeight);
  fill(blackBUTTONcolor);
  rect(BUTTONblackDrawingColorX, BUTTONblackDrawingColorY, colorButtonWidth, colorButtonHeight);
  stroke(black);
  fill(whiteReset);


  //Drawing tool, combined boolean
  fill (colorOfDrawingTool);
  stroke(colorOfDrawingTool);
  //Pencil Code
  if (drawOnPaper==true && draw==true && pencilON==true && mouseX>=drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight)  line(mouseX, mouseY, pmouseX, pmouseY) ;//End Line Draw
  if (drawOnPaper==false && draw==true &&  pencilON==true &&  mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) line(mouseX, mouseY, pmouseX, pmouseY) ;
  if (drawOnPaper==false && draw==true && pencilON==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) line(mouseX, mouseY, pmouseX, pmouseY) ;
  fill(whiteReset);
  stroke(black);
  //Eraser Code For Background
  fill(eraserColor);
  stroke(eraserColor);
  strokeWeight(roundedEdges*2);
  if (drawOnPaper==false && draw==true && eraserON==true && mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) line(mouseX, mouseY, pmouseX, pmouseY) ;
  if (drawOnPaper==false && draw==true &&  eraserON==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) line(mouseX, mouseY, pmouseX, pmouseY) ;
  fill(whiteReset);
  stroke(black);
  strokeWeight(reset);
  //Eraser Code when on paper
  if (drawOnPaper==true && draw==true &&  eraserON==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    eraserColor=whiteReset;
    fill(eraserColor);
    stroke(eraserColor);
    strokeWeight(roundedEdges*2);
    line(mouseX, mouseY, pmouseX, pmouseY) ;
    stroke(black);
    strokeWeight(reset);
  }
  //
  //Circle Stamp Code
  fill(colorOfDrawingTool);
  stroke(colorOfDrawingTool);
  if (drawOnPaper==true && draw==true && stampON==true && roundStampON==true && mouseX>=drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  if (drawOnPaper==false && draw==true && stampON==true && roundStampON==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  if (drawOnPaper==false && draw==true && stampON==true && roundStampON==true && mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  fill(whiteReset);
  stroke(black);
  //
  //Square Stamp Code
   fill(colorOfDrawingTool);
  stroke(colorOfDrawingTool);
  if (drawOnPaper==true && draw==true && stampON==true && squareStampON==true && mouseX>=drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) rect(mouseX, mouseY, drawingDiameter, drawingDiameter);
  if (drawOnPaper==false && draw==true && stampON==true && squareStampON==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) rect(mouseX, mouseY, drawingDiameter, drawingDiameter);
  if (drawOnPaper==false && draw==true && stampON==true && squareStampON==true && mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) rect(mouseX, mouseY, drawingDiameter, drawingDiameter);
  fill(whiteReset);
  stroke(black);
   //
  //Triangle Stamp Code
   fill(colorOfDrawingTool);
  stroke(colorOfDrawingTool);
  if (drawOnPaper==true && draw==true && stampON==true && triangleStampON==true && mouseX>=drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight)  triangle(mouseX, mouseY, mouseX+drawingDiameter*1/2, mouseY, mouseX+drawingDiameter*1/4, mouseY+drawingDiameter);
  if (drawOnPaper==false && draw==true && stampON==true && triangleStampON==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight)  triangle(mouseX, mouseY, mouseX+drawingDiameter*1/2, mouseY, mouseX+drawingDiameter*1/4, mouseY+drawingDiameter);
  if (drawOnPaper==false && draw==true && stampON==true && triangleStampON==true && mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) triangle(mouseX, mouseY, mouseX+drawingDiameter*1/2, mouseY, mouseX+drawingDiameter*1/4, mouseY+drawingDiameter);
  fill(whiteReset);
  stroke(black);
  
  //Music Box
  rect( musicBoxX, musicBoxY, musicBoxWidth, musicBoxHeight);
  fill(black);
  ellipse (playBUTTONcircleX, playBUTTONcircleY, playBUTTONdiameter, playBUTTONdiameter);
  fill(whiteReset);
  triangle(playBUTTONtriangleX1, playBUTTONtriangleY1, playBUTTONtriangleX2, playBUTTONtriangleY2, playBUTTONtriangleX3, playBUTTONtriangleY3);
  line(pauseBUTTONline1X1, pauseBUTTONline1Y1, pauseBUTTONline1X2, pauseBUTTONline1Y2);
  line(pauseBUTTONline2X1, pauseBUTTONline2Y1, pauseBUTTONline2X2, pauseBUTTONline2Y2);





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


  //
  //Paper button, and enabling ink

  if (mouseX>= BUTTONpaperX && mouseX<= BUTTONpaperX+BUTTONpaperWidth && mouseY>=BUTTONpaperY && mouseY<=BUTTONpaperY+BUTTONpaperHeight) {
    if (paper==false) paper=true;
    drawOnPaper=true;
  }
  //To stop drawing while on paper
  if (mouseX>=drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    if (drawOnPaper==true) {

      if (draw==true) {
        draw=false;
      } else {
        draw=true;
      }
    }
  }
  //To stop drawing while on background 
  if (mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) {

    if (drawOnPaper==false) {

      if (draw==true) {
        draw=false;
      } else {
        draw=true;
      }
    }
  }

  if (mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) {

    if (drawOnPaper==false) {

      if (draw==true) {
        draw=false;
      } else {
        draw=true;
      }
    }
  }


  //
  //if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //Turns on and off backgrounds
  BackgroundButtonsMousepressed ();
  //
  //Drawing Tools MousePressed
  //
  //Pencil Button if statement
  if (mouseX>=pencilButtonX && mouseX<=pencilButtonX+drawingButtonWidth && mouseY>=pencilButtonY && mouseY<=pencilButtonY+drawingButtonHeight) {
    pencilON=true;
    eraserON=false;
    stampON=false;
  }
  //Eraser Button if statement 
  if (mouseX>=eraserButtonX && mouseX<=eraserButtonX+drawingButtonWidth && mouseY>=eraserButtonY && mouseY<=eraserButtonY+drawingButtonHeight) {
    pencilON=false;
    eraserON=true;
    stampON=false;
  }
  //Stamp Button if statement
  if (mouseX>=stampBUTTONX && mouseX<=stampBUTTONX+drawingButtonWidth && mouseY>=stampBUTTONY && mouseY<=stampBUTTONY+drawingButtonHeight) {
    pencilON=false;
    eraserON=false;
    stampON=true;
    roundStampON=true;
  }
  //Circle Stamp Button If statement
  if (mouseX>=roundStampBUTTONX && mouseX<=roundStampBUTTONX+roundStampWidth && mouseY>=roundStampBUTTONY && mouseY<=roundStampBUTTONY+roundStampHeight) {
    roundStampON=true;
    squareStampON=false;
    triangleStampON=false;
  }
//Square Stamp Button if Statement
if (mouseX>=squareStampBUTTONX && mouseX<=squareStampBUTTONX+squareStampWidth && mouseY>=squareStampBUTTONY && mouseY<=squareStampBUTTONY+squareStampHeight) {
    roundStampON=false;
    squareStampON=true;
    triangleStampON=false;
  }
//Triangle Stamp Button If statement
if (mouseX>=triangleStampBUTTONX && mouseX<=triangleStampBUTTONX+triangleStampWidth && mouseY>=triangleStampBUTTONY && mouseY<=triangleStampBUTTONY+triangleStampHeight) {
    roundStampON=false;
    squareStampON=false;
    triangleStampON=true;
  }

  //To allow color/drawing to show up on the background, when you touch the background you will be able to draw on the background 
  if (mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) {

    if (drawOnPaper==false) {
      originalGreyBackgroundON=false;
      backgroundImage1ON=false;
      backgroundImage2ON=false;
      backgroundImage3ON=false;
    }
  }
  if (mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) {

    if (drawOnPaper==false) {

      if (originalGreyBackgroundON==true) {
        originalGreyBackgroundON=false;
        eraserColor=greyReset;
      }
      //
      if (backgroundImage1ON==true) {
        backgroundImage1ON=false;
        eraserColor=peachy;
      }
      //
      if (backgroundImage2ON==true) {
        backgroundImage2ON=false;
        eraserColor=backgroundImage2BackgroundColor;
      }
      //
      if (backgroundImage3ON==true) {  
        backgroundImage3ON=false;
        eraserColor=backgroundImage3BackgroundColor;
      }
      //
    }
  }


  //COLOR of drawing tools mousePressed

  //color red

  if (mouseX>=BUTTONredDrawingColorX && mouseX<=BUTTONredDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONredDrawingColorY && mouseY<=BUTTONredDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=redBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }


  //
  //color orange

  if (mouseX>=BUTTONorangeDrawingColorX && mouseX<=BUTTONorangeDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONorangeDrawingColorY && mouseY<=BUTTONorangeDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=orangeBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }

  // 
  //color yellow
  if (mouseX>=BUTTONyellowDrawingColorX && mouseX<=BUTTONyellowDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONyellowDrawingColorY && mouseY<=BUTTONyellowDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=yellowBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }

  //color green
  if (mouseX>=BUTTONgreenDrawingColorX && mouseX<=BUTTONgreenDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONgreenDrawingColorY && mouseY<=BUTTONgreenDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=greenBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }


  //color blue
  if (mouseX>=BUTTONblueDrawingColorX && mouseX<=BUTTONblueDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONblueDrawingColorY && mouseY<=BUTTONblueDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=blueBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }


  //color purple
  if (mouseX>=BUTTONpurpleDrawingColorX && mouseX<=BUTTONpurpleDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONpurpleDrawingColorY && mouseY<=BUTTONpurpleDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=purpleBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }

  //color grey
  if (mouseX>=BUTTONgreyDrawingColorX && mouseX<=BUTTONgreyDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONgreyDrawingColorY && mouseY<=BUTTONgreyDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=greyBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }

  //color black
  if (mouseX>=BUTTONblackDrawingColorX && mouseX<=BUTTONblackDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONblackDrawingColorY && mouseY<=BUTTONblackDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=blackBUTTONcolor;

    if (eraserON==true) {
      pencilON=true;
      eraserON=false;
      stampON=false;
    }
  }
}//End mousePressed
//
//End MAIN program
