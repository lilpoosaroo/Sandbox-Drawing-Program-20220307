void ToolBarCode () {
 //Tool bar 
  if (originalGreyBackgroundON==true) {
    toolbarLining=black;
    toolbarFILLING=whiteReset;
  }
  if (backgroundImage1ON==true) {
    toolbarLining=COLORIMAGE1toolbarLining;
    toolbarFILLING=COLORIMAGE1toolbarFILLING;
  }
  if (backgroundImage2ON==true) {
    toolbarLining=COLORIMAGE2toolbarLining;
    toolbarFILLING=COLORIMAGE2toolbarFILLING;
  }
  if (backgroundImage3ON==true) {
    toolbarLining=COLORIMAGE3toolbarLining;
    toolbarFILLING=COLORIMAGE3toolbarFILLING;
  }
  stroke(toolbarLining);
  fill(toolbarFILLING);
  strokeWeight(roundedEdges);
  rect(toolBarX, toolBarY, toolBarWidth, toolBarHeight);
  strokeWeight(reset);
}//End tool bar code
