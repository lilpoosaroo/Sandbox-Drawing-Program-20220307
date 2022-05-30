void BackgroundButtonsMousepressed (){
  //Background Button if statements 
  if (mouseX>=BUTTONbackgroundImage1X && mouseX<=BUTTONbackgroundImage1X + BUTTONbackgroundImageWidth && mouseY>=BUTTONbackgroundImage1Y && mouseY<=BUTTONbackgroundImage1Y + BUTTONbackgroundImageHeight) {
    //if (mouseX>=(appWidth*0) && mouseX<=(appWidth*0) + (toolBarWidth*1/2) && mouseY>=(appHeight*0) && mouseY<=(appHeight*0) + (toolBarWidth*1/2)) {

    if (backgroundImage1ON==false) {
      backgroundImage1ON=true;
    } else {
      backgroundImage1ON=false;
    }


    backgroundImage2ON=false;
    backgroundImage3ON=false;
  }


  if (mouseX>=BUTTONbackgroundImage2X && mouseX<=BUTTONbackgroundImage2X + BUTTONbackgroundImageWidth && mouseY>=BUTTONbackgroundImage2Y && mouseY<=BUTTONbackgroundImage2Y + BUTTONbackgroundImageHeight) {

    if (backgroundImage2ON==false) {
      backgroundImage2ON=true;
    } else {
      backgroundImage2ON=false;
    }


    backgroundImage1ON=false;
    backgroundImage3ON=false;
  }

  if (mouseX>=BUTTONbackgroundImage3X && mouseX<=BUTTONbackgroundImage3X + BUTTONbackgroundImageWidth && mouseY>=BUTTONbackgroundImage3Y && mouseY<=BUTTONbackgroundImage3Y + BUTTONbackgroundImageHeight) {
    
    if (backgroundImage3ON==false) {
      backgroundImage3ON=true;
    } else {
      backgroundImage3ON=false;
    }


    backgroundImage1ON=false;
    backgroundImage2ON=false;
  }

}
