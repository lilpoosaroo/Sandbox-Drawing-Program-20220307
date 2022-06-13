void BackgroundButtonsMousepressed () {
  //Background Button if statements 
  if (mouseX>=BUTTONbackgroundImage1X && mouseX<=BUTTONbackgroundImage1X + BUTTONbackgroundImageWidth && mouseY>=BUTTONbackgroundImage1Y && mouseY<=BUTTONbackgroundImage1Y + BUTTONbackgroundImageHeight) {
    //if (mouseX>=(appWidth*0) && mouseX<=(appWidth*0) + (toolBarWidth*1/2) && mouseY>=(appHeight*0) && mouseY<=(appHeight*0) + (toolBarWidth*1/2)) {

    if (toolbarLining==COLORIMAGE1toolbarLining && toolbarFILLING==COLORIMAGE1toolbarFILLING) {
      originalGreyBackgroundON=true;
      backgroundImage1ON=false;//This code does not work unless I add that the bckgroundImage1ON needs to become false
    }
  

    if (toolbarLining==black && toolbarFILLING==whiteReset || toolbarLining==COLORIMAGE2toolbarLining && toolbarFILLING==COLORIMAGE2toolbarFILLING || 
    toolbarLining==COLORIMAGE3toolbarLining && toolbarFILLING==COLORIMAGE3toolbarFILLING) backgroundImage1ON=true;

    backgroundImage2ON=false;
    backgroundImage3ON=false;
  }

  if (mouseX>=BUTTONbackgroundImage2X && mouseX<=BUTTONbackgroundImage2X + BUTTONbackgroundImageWidth && mouseY>=BUTTONbackgroundImage2Y && mouseY<=BUTTONbackgroundImage2Y + BUTTONbackgroundImageHeight) {

    if (backgroundImage2ON==false) {
      backgroundImage2ON=true;
    } else {
      backgroundImage2ON=false;
    }

    originalGreyBackgroundON=false;
    backgroundImage1ON=false;
    backgroundImage3ON=false;
  }

  if (mouseX>=BUTTONbackgroundImage3X && mouseX<=BUTTONbackgroundImage3X + BUTTONbackgroundImageWidth && mouseY>=BUTTONbackgroundImage3Y && mouseY<=BUTTONbackgroundImage3Y + BUTTONbackgroundImageHeight) {

    if (backgroundImage3ON==false) {
      backgroundImage3ON=true;
    } else {
      backgroundImage3ON=false;
    }

    originalGreyBackgroundON=false;
    backgroundImage1ON=false;
    backgroundImage2ON=false;
  }
}
