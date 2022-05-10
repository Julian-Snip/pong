void gameover () {
gameover.play();
  background(0);


  //score indicator
  if (leftscore<rightscore) {
    textSize(100);
    fill(#0EE0D4);
    text("RIGHT SIDE WINS", 500, 200);
  } else {
    textSize(100);
    fill(#E00EC5);
    text("LEFT SIDE WINS", 500, 200);
  }

  //buttons
  fill(#9D4EAD);
  rect(200, 350, 200, 100);
  rect(600, 350, 200, 100);
  textSize(30);
  fill(#74C2F5);
  text("MENU", 300, 400);
  text("PLAY AGAIN", 700, 400);
}

void gameoverClicks () {

  if (mouseX > 200 && mouseX < 400 && mouseY > 350 && mouseY < 450) {
    mode = INTRO;
    rightscore = 0;
    leftscore = 0;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (mouseX > 600 && mouseX < 800 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
    rightscore = 0;
    leftscore = 0;
    vx = random(-5, 5);
    vy = random(-5, 5);

    leftx = 0;
    lefty = height/2;
    leftd = 200;

    rightx = width;
    righty = height/2;
    rightd = 200;
  }
}
