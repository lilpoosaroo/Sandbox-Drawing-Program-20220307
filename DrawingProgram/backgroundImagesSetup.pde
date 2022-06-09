void backgroundImagesSetup() {

  if (backgroundImage1ON==true) {
    backgroundImage2ON=false;
    backgroundImage3ON=false;
  }
  if (backgroundImage2ON==true) {
    backgroundImage1ON=false;
    backgroundImage3ON=false;
  }
  if (backgroundImage3ON==true) {
    backgroundImage1ON=false;
    backgroundImage2ON=false;
  }
  //
  //
  //

  if (backgroundImage1ON==false) {
  if (backgroundImage2ON==false && backgroundImage3ON==false) {
      background(greyReset);
    }
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    if (backgroundImage2ON==false) image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    if (backgroundImage3ON==false) image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    strokeWeight(roundedEdges);
    rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
    strokeWeight(reset);
  } else {
    background(backgroundImage1);//, (appWidth*1/2)-(backgroundImage1Width*1/2), (appHeight*1/2)-(backgroundImage1Height*1/2), backgroundImage1Width, backgroundImage1Height);
    fill(greyReset);
    rect(BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    stroke(COLORIMAGE1toolbarLining);
    fill(COLORIMAGE1toolbarFILLING);
    strokeWeight(roundedEdges);
    rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
    strokeWeight(reset);
  }
  //
  //
  //


  if (backgroundImage2ON==false) {
    if (backgroundImage1ON==false && backgroundImage3ON==false) {
      background(greyReset);
    }
    if (backgroundImage1ON==false) image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    if (backgroundImage3ON==false) image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    strokeWeight(roundedEdges);
    rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
    strokeWeight(reset);
  } else {
    background(backgroundImage2);//, backgroundImage2X, backgroundImage2Y, appWidth, appHeight);
    fill(greyReset);
    rect(BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    stroke(COLORIMAGE2toolbarLining);
    fill(COLORIMAGE2toolbarFILLING);
    strokeWeight(roundedEdges);
    rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
    strokeWeight(reset);
  }

  if (backgroundImage3ON==false) {
    if (backgroundImage1ON==false && backgroundImage2ON==false) {
      background(greyReset);
    }
    if (backgroundImage1ON==false) image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    if (backgroundImage2ON==false) image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    strokeWeight(reset);
    strokeWeight(roundedEdges);
    rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
    strokeWeight(reset);
  } else {
    background(backgroundImage3);//, backgroundImage3X, backgroundImage3Y, appWidth, appHeight);
    fill(greyReset);
    rect(BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    stroke(COLORIMAGE3toolbarLining);
    fill(COLORIMAGE3toolbarFILLING);
    strokeWeight(roundedEdges);
    rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
    strokeWeight(reset);
  }
}//End backgroundImagesSetup