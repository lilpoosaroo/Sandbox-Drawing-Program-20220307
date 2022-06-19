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
Boolean pencilON=true, eraserON=false, markerON=false;
float drawingButtonWidth, drawingButtonHeight;
float pencilButtonX, pencilButtonY;
int pencilImageHeight, pencilImageWidth;
int largerPencilImageDimension, smallerPencilImageDimension;
float widthRatioPencilImage, heightRatioPencilImage;
Boolean pencilImageWidthLarger= false, pencilImageHeightLarger = false;
PImage BUTTONpencilImage;
boolean drawOnPaper=false, draw=false;
float eraserButtonX, eraserButtonY; 
color eraserColor;
PImage BUTTONeraserImage;
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
  drawingButtonWidth=(drawingSurfaceWidth*1/4)*13/80;
  drawingButtonHeight=(drawingSurfaceWidth*1/4)*1/6;
  pencilButtonX=BUTTONpaperX;
  pencilButtonY=BUTTONpaperY+BUTTONpaperHeight+(roundedEdges*2);
  BUTTONpencilImage=loadImage("BUTTONpencilimage-197x192.jpg");
  eraserButtonX=pencilButtonX+(drawingButtonWidth*3/2)+roundedEdges;
  eraserButtonY=pencilButtonY; 
  BUTTONeraserImage=loadImage("EraserImage-564x545.jpg");
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
  image(BUTTONpencilImage, pencilButtonX, pencilButtonY, drawingButtonWidth*3/2, drawingButtonHeight*3/2);
  if (pencilON==true) {
    strokeWeight(roundedEdges*1/2);
  } else {
    strokeWeight(reset);
  }
  noFill();
  stroke(colorOfDrawingTool);
  rect((pencilButtonX+drawingButtonWidth*3/2*1/2)-(drawingButtonWidth*3/2*110/100*1/2), (pencilButtonY+drawingButtonHeight*3/2*1/2)-(drawingButtonHeight*3/2*110/100*1/2), (drawingButtonWidth*3/2)*110/100, (drawingButtonHeight*3/2)*110/100);
  fill(whiteReset);
  strokeWeight(reset);
  stroke(black);
  //Eraser Code
  image(BUTTONeraserImage, eraserButtonX, eraserButtonY, drawingButtonWidth*3/2, drawingButtonHeight*3/2 );
  if (eraserON==true) {
    strokeWeight(roundedEdges*1/2);
  } else {
    strokeWeight(reset);
  }
  noFill();
  stroke(black);
  rect((eraserButtonX+drawingButtonWidth*3/2*1/2)-(drawingButtonWidth*3/2*110/100*1/2), (eraserButtonY+drawingButtonHeight*3/2*1/2)-(drawingButtonHeight*3/2*110/100*1/2), (drawingButtonWidth*3/2)*110/100, (drawingButtonHeight*3/2)*110/100);
  fill(whiteReset);
  strokeWeight(reset);



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
    if (eraserON==true) {
      if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) eraserColor=whiteReset;
    }
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
  /*
  //Drawing Circles Code
  if (drawOnPaper==true && draw==true && mouseX>=drawingSurfaceX && mouseX<= drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  if (drawOnPaper==false && draw==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  if (drawOnPaper==false && draw==true && mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  */
  
  //Eraser Code
  fill(eraserColor);
  stroke(eraserColor);
  strokeWeight(roundedEdges*2);
  if (drawOnPaper==false && draw==true && eraserON==true && mouseX>=appWidth*0 && mouseX<=appWidth && mouseY>=toolBarY+toolBarHeight+(roundedEdges) && mouseY<=appHeight) line(mouseX, mouseY, pmouseX, pmouseY) ;
  if (drawOnPaper==false && draw==true &&  eraserON==true && mouseX>=BUTTONbackgroundImage3X+BUTTONbackgroundImageWidth && mouseX<=appWidth && mouseY>=appHeight*0 && mouseY<=appHeight) line(mouseX, mouseY, pmouseX, pmouseY) ;
  fill(whiteReset);
  stroke(black);
  strokeWeight(reset);


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




  //Button that allows the drawing of ink: paper
  //
  //if (mouseX>=quitButtonX && mouseX<= quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  BackgroundButtonsMousepressed ();
  //Drawing Tools MousePressed

  if (mouseX>=pencilButtonX && mouseX<=pencilButtonX+drawingButtonWidth*3/2 && mouseY>=pencilButtonY && mouseY<=pencilButtonY+drawingButtonHeight*3/2) {
    pencilON=true;
    eraserON=false;
  }
  image(BUTTONeraserImage, eraserButtonX, eraserButtonY, drawingButtonWidth*3/2, drawingButtonHeight*3/2 );
  if (mouseX>=eraserButtonX && mouseX<=eraserButtonX+drawingButtonWidth*3/2 && mouseY>=eraserButtonY && mouseY<=eraserButtonY+drawingButtonHeight*3/2) {
    pencilON=false;
    eraserON=true;
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
    pencilON=true;
    eraserON=false;
  }


  //
  //color orange

  if (mouseX>=BUTTONorangeDrawingColorX && mouseX<=BUTTONorangeDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONorangeDrawingColorY && mouseY<=BUTTONorangeDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=orangeBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }

  // 
  //color yellow
  if (mouseX>=BUTTONyellowDrawingColorX && mouseX<=BUTTONyellowDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONyellowDrawingColorY && mouseY<=BUTTONyellowDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=yellowBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }

  //color green
  if (mouseX>=BUTTONgreenDrawingColorX && mouseX<=BUTTONgreenDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONgreenDrawingColorY && mouseY<=BUTTONgreenDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=greenBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }


  //color blue
  if (mouseX>=BUTTONblueDrawingColorX && mouseX<=BUTTONblueDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONblueDrawingColorY && mouseY<=BUTTONblueDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=blueBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }


  //color purple
  if (mouseX>=BUTTONpurpleDrawingColorX && mouseX<=BUTTONpurpleDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONpurpleDrawingColorY && mouseY<=BUTTONpurpleDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=purpleBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }

  //color grey
  if (mouseX>=BUTTONgreyDrawingColorX && mouseX<=BUTTONgreyDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONgreyDrawingColorY && mouseY<=BUTTONgreyDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=greyBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }

  //color black
  if (mouseX>=BUTTONblackDrawingColorX && mouseX<=BUTTONblackDrawingColorX+colorButtonWidth 
    && mouseY>=BUTTONblackDrawingColorY && mouseY<=BUTTONblackDrawingColorY+colorButtonHeight) {
    colorOfDrawingTool=blackBUTTONcolor;
    pencilON=true;
    eraserON=false;
  }
}//End mousePressed
//
//End MAIN program
