void intro () {
  background(255);
 theme.play();
 fill(#3EEA1C);
 textSize(200);
 text("P O N G",500,150);
 
 
 
 
 //start button
 fill(255);
 rect(400, 300, 200, 100);
 fill(0);
 textSize(30);
 text("TWO PLAYER",500,350);
 
 //options
 fill(255);
 rect(400,450,200,100);
 fill(0);
 text("ONE PLAYER",500,500);

}

void introClicks () {
  if (mouseX > 400 && mouseX < 600 && mouseY > 300 &&  mouseY < 400) {
    mode = GAME;
    AI = false;
    
  }
  if (mouseX > 400 && mouseX < 600 && mouseY >450 && mouseY < 550){
   mode = GAME;
    AI = true;
  }
  
}
