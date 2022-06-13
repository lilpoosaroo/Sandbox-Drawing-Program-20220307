void backgroundImage1Draw () {


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


  if (backgroundImage1ON==true) {
    background(backgroundImage1); 
    fill(greyReset);
    rect(BUTTONbackgroundImage1X, BUTTONbackgroundImage1Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    fill(whiteReset);
    image(backgroundImage2, BUTTONbackgroundImage2X, BUTTONbackgroundImage2Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
    image(backgroundImage3, BUTTONbackgroundImage3X, BUTTONbackgroundImage3Y, BUTTONbackgroundImageWidth, BUTTONbackgroundImageHeight);
  } else {}
  
 
    
  

}//End of backgroun Image 1 
