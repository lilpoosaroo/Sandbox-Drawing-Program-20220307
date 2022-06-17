
void ChoosingLargerDimensionCalculatingAspectRatios() {

  if (BUTTONpaperImageWidth >= BUTTONpaperImageHeight) { //Identify Larger Dimension, if 129 is larger than 172
    largerPaperImageDimension = BUTTONpaperImageWidth; 
    smallerPaperImageDimension = BUTTONpaperImageHeight;
    BUTTONpaperImageWidthLARGER = true;
  } else {//Identify Larger Dimension Portrait
    largerPaperImageDimension = BUTTONpaperImageHeight; 
    smallerPaperImageDimension = BUTTONpaperImageWidth;
    BUTTONpaperImageHeightLARGER = true;
  }

  /*
    int BUTTONpaperImageWidth = 129;
   int BUTTONpaperImageHeight = 172;
   */

  if ( BUTTONpaperImageWidthLARGER == true ) paperImageWidthRatio = float (largerPaperImageDimension) / float (largerPaperImageDimension); // =1
  if ( BUTTONpaperImageWidthLARGER == true )  paperImageHeightRatio = float (smallerPaperImageDimension) / float (largerPaperImageDimension); //=1.333333333 when you divide an integer by an integer it will  drop the decimal, putting them as floats prevents that.
  if ( BUTTONpaperImageHeightLARGER == true ) paperImageWidthRatio =  float (smallerPaperImageDimension) / float (largerPaperImageDimension); //=0.75
  if ( BUTTONpaperImageHeightLARGER == true )  paperImageHeightRatio = float (largerPaperImageDimension) / float (largerPaperImageDimension); //=1
  
  //Larger dimension/aspect ratio of pencil image

  
  if (pencilImageWidth >= pencilImageHeight) { //Identify Larger Dimension, if 197 is larger than 192
    largerPencilImageDimension = pencilImageWidth; 
    smallerPencilImageDimension = pencilImageHeight;
    pencilImageWidthLarger= true;
  } else {//Identify Larger Dimension Portrait
    largerPencilImageDimension = pencilImageHeight; 
    smallerPencilImageDimension = pencilImageWidth;
    pencilImageHeightLarger = true;
  }
  
  /*
    int pencilImageWidth = 197;
   int pencilImageHeight = 192;
   */

  if ( pencilImageWidthLarger == true ) widthRatioPencilImage = float (largerPencilImageDimension) / float (largerPencilImageDimension); // =1
  if ( pencilImageWidthLarger == true )  heightRatioPencilImage = float (smallerPencilImageDimension) / float (largerPencilImageDimension); //=0.9746192893 when you divide an integer by an integer it will  drop the decimal, putting them as floats prevents that.
  if ( pencilImageHeightLarger == true ) widthRatioPencilImage =  float (smallerPencilImageDimension) / float (largerPencilImageDimension); //=1.026041667
  if ( pencilImageHeightLarger == true )  heightRatioPencilImage = float (largerPencilImageDimension) / float (largerPencilImageDimension); //=1
}//End choosing larger dimension/aspect ratio
