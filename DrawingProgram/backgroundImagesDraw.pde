void backgroundImagesDraw () {


  if (backgroundImage1ON==true) {
    backgroundImage2ON=false;
    backgroundImage3ON=false;
    originalGreyBackgroundON=false;
  }
  if (backgroundImage2ON==true) {
    backgroundImage1ON=false;
    backgroundImage3ON=false;
    originalGreyBackgroundON=false;
  }
  if (backgroundImage3ON==true) {
    backgroundImage1ON=false;
    backgroundImage2ON=false;
    originalGreyBackgroundON=false;
  }
  if (originalGreyBackgroundON==true) {
    backgroundImage1ON=false;
    backgroundImage2ON=false;
    backgroundImage3ON=false;
  }
    //Grey Background code
  if (originalGreyBackgroundON==true) {
    background(greyReset);  
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    musicBoxLiningColor=black;
    musicBoxFillingColor=whiteReset;
  } else {
  }
  //Background Image 1 code
    if (backgroundImage1ON==true) {
    background(backgroundImage1); 
    fill(greyReset);
    rect(BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    musicBoxLiningColor=COLORIMAGE1toolbarLining; 
    musicBoxFillingColor=COLORIMAGE1toolbarFILLING;
  } else {
  }
 
  //Background Image 2 Code
  if (backgroundImage2ON==true) {
    background(backgroundImage2); 
    fill(greyReset);
    rect(BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    image(backgroundImage1, BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    musicBoxLiningColor=COLORIMAGE2toolbarLining; 
    musicBoxFillingColor=COLORIMAGE2toolbarFILLING;
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
    musicBoxLiningColor=COLORIMAGE3toolbarLining; 
    musicBoxFillingColor=COLORIMAGE3toolbarFILLING;
  } else {
  }

}//End of backgroun Image 1 
