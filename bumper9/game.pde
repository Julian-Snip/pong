void game() {
  background(907); 
    theme.play();
    
  
   //centerline
   fill(0);
  rect(497,0,6,600);
  
  
  //paddles
  fill(#E00EC5);
  circle(leftx, lefty, leftd);
  fill(#0EE0D4);
  circle(rightx, righty, rightd);

 //pause button
  fill(#12F707);
   rect(50,50,50,50);
  textSize(14);
  fill(0);
  text("PAUSE",75,75);
 


  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  if(AI == false){
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty +5;
  }else {
    if(bally>righty) righty =righty +4;
    if(bally<righty) righty = righty -4;
  }

  //ball
  fill(#F70738);
  circle(ballx, bally, balld);
  if (timer<0) {
    ballx =  ballx + vx;
    bally =  bally + vy;
  }

  //paddle rebound
  if (dist(ballx, bally, rightx, righty) <= rightd/2 + balld/2) {
    vx = (ballx-rightx)/10;
    vy = (bally-righty)/10;
    bump.rewind();
    bump.play();
  }
  if (dist(ballx, bally, leftx, lefty) <= rightd/2 + balld/2) {
    vx = (ballx-leftx)/10;
    vy = (bally-lefty)/10;
     bump.rewind();
    bump.play();
   
  }

  //rebound
  if ( bally < balld/2 ||  bally >= height-balld/2) {
    vy = vy * -1;
  }

  //scoring
  if (ballx<0) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    coin.rewind();
    coin.play();
  }
  if (ballx> 1000) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
     coin.rewind();
    coin.play();
  }

  //scoreboard 
  textSize(30);
  fill(#E00EC5);
  text("LEFTSCORE: " + leftscore, width/4, 100);
  fill(#0EE0D4);
  text("RIGHTSCORE: " + rightscore, 3*width/4, 100);
  timer=timer -1;

  //restrictions
  if (lefty<100) {
    lefty=100;
  }
  if (lefty>500) {
    lefty=500;
  }
  if (righty<100) {
    righty=100;
  }
  if (righty>500) {
    righty=500;
  }

  //gameover
  if (rightscore==5) {
    mode= GAMEOVER;
  }
  if (leftscore==5) {
    mode= GAMEOVER;
  }
  
 
 



}


void gameClicks () {
  if(mouseX > 50 && mouseX < 100 && mouseY >50 && mouseY < 100){
    mode = PAUSE;
  }
  
}
