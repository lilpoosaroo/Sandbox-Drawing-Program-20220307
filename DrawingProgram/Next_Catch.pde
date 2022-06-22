void Next_Catch () {
if ( currentSong >= song.length-1) { 
        currentSong -= currentSong; //Makes the playlist start from the beginning
      } else {
        currentSong++;
      }
}//End Catch
/*
if ( currentSong <= song.length-4) { 
        currentSong += song.length-1; //Makes the playlist start from the beginning
      } else {
        currentSong--;
      }


*/
