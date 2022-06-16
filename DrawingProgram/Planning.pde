/*
Drawing Program Expectations
 https://github.com/Intro-CS-App-Dev-and-Deploy/Overview#final-exam-drawing-program
 
 Drawing Program concept:
 1) A paint by numbers
 2) Beautiful appliance
 3) COMPLETE fullScreen();
 4) COMPLETE Background for drawing program
 5) Starting Screen?
 
 Drawing Program Will Need:
 COMPLETE button that changes the background
 INCOMPLETE button that controls stroke, this would be strokeWeight();
 COMPLETE button that controls color
 INCOMPLETE button that draws shapes
 INCOMPLETE button that draws images
 INCOMPLETE button that makes noises (croissahnt, whenever you touch the outline)
 INCOMPLETE button that controls transparency, this would be alpha this would allow us to have a highlighter
 INCOMPLETE button that when hovers over, explains what a button is
 INCOMPLETE Eraser button: drawing with white ink
 
 Planning: 
 Turn the stroke of the drawing tools in to different colors: 
 1) Can only affect the drawing tools, not the strokes/fills of other componets - POSSIBLE SOLUTIONS: 
 - Can make it so that when a button is touched, it doesn't affect stroke(); or fill();, it affects colorOfDrawingTool
 2)The color selection can only be visible when a button is touched - POSSIBLE SOLUTIONS: 
 - when you touch the color pallet button,  if (colorChoicesON==false ) {colorChoicesON=true} else {colorChoicesON=false;}
 3) the color of  drawing tool can only be changed if the color selection is on. 
 PROBLEM #2 ENCOUNTERED: the color choices box will not turn off after a color has been chosen, this is because the background will become false when paper is turned on, and it will no
 // longer draw over the color choices
 POSSIBLE SOLUTIONS TO PROBLEM #2
 - Environment: when originalGreyBackgroundON=false, when paper=true, change the coordinates of the colorChoiceBox rectangle so that it will appear in the toolbox where it is constantly being drawn 
 We will be replacing the button for the palette with the actual palette
  
  //color red
  if (mouseX>=BUTTONredDrawingColorX && mouseX<=BUTTONredDrawingColorX+colorButtonWidth && mouseY>=BUTTONredDrawingColorY && mouseY<=BUTTONredDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=redBUTTONcolor;
  }
  
  //color orange
   
  if (mouseX>=BUTTONorangeDrawingColorX && mouseX<=BUTTONorangeDrawingColorX+colorButtonWidth && mouseY>=BUTTONorangeDrawingColorY && mouseY<=BUTTONorangeDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=orangeBUTTONcolor;
  }
  
  
  //color yellow
  if (mouseX>=BUTTONyellowDrawingColorX && mouseX<=BUTTONyellowDrawingColorX+colorButtonWidth && mouseY>=BUTTONyellowDrawingColorY && mouseY<=BUTTONyellowDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=yellowBUTTONcolor;
  }
  
  //color green
  if (mouseX>=BUTTONgreenDrawingColorX && mouseX<=BUTTONgreenDrawingColorX+colorButtonWidth && mouseY>=BUTTONgreenDrawingColorY && mouseY<=BUTTONgreenDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=greenBUTTONcolor;
  }
  
  
  //color blue
  if (mouseX>=BUTTONblueDrawingColorX && mouseX<=BUTTONblueDrawingColorX+colorButtonWidth && mouseY>=BUTTONblueDrawingColorY && mouseY<=BUTTONblueDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=blueBUTTONcolor;
  }
  
  
  //color purple
  if (mouseX>=BUTTONpurpleDrawingColorX && mouseX<=BUTTONpurpleDrawingColorX+colorButtonWidth && mouseY>=BUTTONpurpleDrawingColorY && mouseY<=BUTTONpurpleDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=purpleBUTTONcolor;
  }
  
  //color grey
  if (mouseX>=BUTTONgreyDrawingColorX && mouseX<=BUTTONgreyDrawingColorX+colorButtonWidth && mouseY>=BUTTONgreyDrawingColorY && mouseY<=BUTTONgreyDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=greyBUTTONcolor;
  }
  
  //color black
  if (mouseX>=BUTTONblackDrawingColorX && mouseX<=BUTTONblackDrawingColorX+colorButtonWidth && mouseY>=BUTTONblackDrawingColorY && mouseY<=BUTTONblackDrawingColorY+colorButtonHeight) {
    
    if (colorChoicesON==true) colorOfDrawingTool=blackBUTTONcolor;
  }
 
 
 
PROBLEM SOLVED Problem Encountered: unable to draw a paper over the background because it keeps repeating. 
 Possible solutions: 
 1) Can make it so that when backgroundImage1ON=false, it stops printing the background1 image instead of reseting to the original grey drawing background. 
 In order to make this work:
 - Need a a greyBackgroundON boolean to be able to get back to the original grey drawing background. 
 - Once backgroundImage1 becomes true, it will need to immediately become false. 
 - The grey background on backgroundImage1's button will have to remain grey unless on of the others become true, not if backgroundImage1 becomes false
 - When the backgroundImage1 is touched: will need to turn true if originalGreyBackgroundON=true. 
 - When the backgroundImage1 is touched: if greyBackgroundON=false, it will become true. 
 - Will need to have a warning that once you change backgrounds, your progress/drawing will be lost, please screenshot your screen to keep what you have. 
 - Will need to make originalGreyBackgroundON=true, in the global variables. 
 - When originalGreyBackgroundON=true, everything else needs to be false so that the grey background does not have to be redrawn, this allows us to make a paper on that screen. 
 
 */
