//pong
//mode frame wrk
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


int mode;
final int INTRO     = 0; 
final int GAME      = 1;
final int PAUSE     = 2;
final int GAMEOVER  = 3;

//sound variables
Minim minim;
AudioPlayer theme,coin,bump,gameover;


//entity variables
float leftx,lefty,leftd,rightx,righty,rightd;
float ballx,bally,balld;
float vx, vy;
boolean AI;

//stats 
int rightscore, leftscore, timer; 


//keyboard variables
boolean wkey,skey,upkey,downkey;


void setup () {
  size(1000, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  //paddle position
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball initialize
  ballx = width/2;
  bally = height/2;
  balld = 70;
  
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false; 
  
  //ball movement
 vx = random(-5,5);
 vy = random(-5,5);
 
 //timer initiliaze
  timer=100;
  
   //minim
  minim = new Minim(this);
  theme = minim.loadFile("themesong.mp3");
  coin = minim.loadFile("coin2.wav");
  bump = minim.loadFile("bump.wav");
  gameover =  minim.loadFile("gameover.wav");

}



void draw () { 
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }  else {
    println("Mode Error: Mode = " + mode);
  }
}
