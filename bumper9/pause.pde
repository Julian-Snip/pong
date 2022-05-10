void pause () {
  theme.pause();

 fill(#12F707);
 textSize(100);
 text("PAUSE",500,290);
 
}

void pauseClicks () {
   if(mouseX > 50 && mouseX < 100 && mouseY >50 && mouseY < 100){
    mode = GAME;
  }
  
}
