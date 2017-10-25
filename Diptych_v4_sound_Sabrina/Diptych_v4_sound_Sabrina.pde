
import ddf.minim.*;

Minim minim;
// Sounds for Right output
AudioPlayer rOneSound;
AudioPlayer rTwoSound;
AudioPlayer rThreeSound;
AudioPlayer rFourSound;
AudioPlayer rFiveSound;
// Sounds for Left output
AudioPlayer lOneSound;
AudioPlayer lTwoSound;
AudioPlayer lThreeSound;
AudioPlayer lFourSound;
AudioPlayer lFiveSound;

//Screen Images LEFT
PImage lfiveT;
PImage lfourR;
PImage lthreeE;
PImage ltwoW;
PImage loneQ;
//Button Images LEFT
PImage lBfiveT;
PImage lBfourR;
PImage lBthreeE;
PImage lBtwoW;
PImage lBoneQ;
// Screen Images RIGHT
PImage roneY;
PImage rtwoU;
PImage rthreeI;
PImage rfourO;
PImage rfiveP;
//Button Images RIGHT
PImage rBoneY;
PImage rBtwoU;
PImage rBthreeI;
PImage rBfourO;
PImage rBfiveP;
void setup () {
  size(760, 500);
  background(0);

  minim = new Minim(this);
  //lOneSound = minim.loadFile("");
  lTwoSound = minim.loadFile("Walking - on.mp3");
  lThreeSound = minim.loadFile("Walking - on.mp3");
  lFourSound = minim.loadFile("Walking - on.mp3");
  lFiveSound = minim.loadFile("Walking - on.mp3");
  rOneSound = minim.loadFile("Man - screaming.mp3");
  rTwoSound = minim.loadFile("Man - screaming.mp3");
  rThreeSound = minim.loadFile("Whoosh - Transitions.mp3");
  rThreeSound = minim.loadFile("Cartoon - Hair.mp3");
  rFourSound = minim.loadFile("knife - slash.mp3");
  rFiveSound = minim.loadFile("Evil - Laugh.mp3");
/*
  rThreeSound = minim.loadFile("file.mp3");
  rFourSound = minim.loadFile("file.mp3");
  rFiveSound = minim.loadFile("file.mp3");
  lOneSound = minim.loadFile("file.mp3");
  lTwoSound = minim.loadFile("file.mp3");
  lThreeSound = minim.loadFile("file.mp3");
  lFourSound = minim.loadFile("file.mp3");
  lFiveSound = minim.loadFile("file.mp3");
*/
  //Load Image Button LEFT
  lBfiveT = loadImage("lBfiveT.png");
  lBfourR = loadImage("lBfourR.png");
  lBthreeE = loadImage("lBthreeE.png");
  lBtwoW = loadImage("lBtwoW.png");
  lBoneQ = loadImage("lBoneQ.png");

  //Load Image Button RIGHT
  rBfiveP = loadImage("rBfiveP.png");
  rBfourO = loadImage("rBfourO.png");
  rBthreeI = loadImage("rBthreeI.png");
  rBtwoU = loadImage("rBtwoU.png");
  rBoneY = loadImage("rBoneY.png");
}
void draw() {
  drawLeft();  
  drawRight();
  redraw();
}

void keyPressed()
{
  if (key=='q') {
    loneQ = loadImage("loneQ.png");
    image(loneQ, 80, 50);
    //lOneSound.play();
  }
  if (key=='w') {
    ltwoW =  loadImage("ltwoW.png");
    image(ltwoW, 80, 50);
    // stop all sound
    lTwoSound.play();
  }
  if (key=='e') {
    lthreeE =  loadImage("lthreeE.png");
    image(lthreeE, 80, 50);
    lThreeSound.play();
  }
  if (key=='r') {
    lfourR =  loadImage("lfourR.png");
    image(lfourR, 80, 50);
    lFourSound.play();
  }
  if (key=='t') {
    lfiveT =  loadImage("lfiveT.png");
    image(lfiveT, 80, 50);
    lFiveSound.play();
  }
  if (key == 'y' || key == 'Y') {    // rBOne = ;
    roneY = loadImage("roneY.png");
    image(roneY, 460, 50);
    rOneSound.play();
  }
  if (key == 'u' || key == 'U') {    // rBTwo = l/L
    rtwoU = loadImage("rtwoU.png");
    image(rtwoU, 460, 50);
    rTwoSound.play();
  }
  
  if (key == 'i' || key == 'I') {    // rBThree = k/K
    rthreeI = loadImage("rthreeI.png");
    image(rthreeI, 460, 50);
    rThreeSound.play();
    
  }
  if (key == 'o' || key == 'O') {    // rBFour = j/J
    rfourO = loadImage("rfourO.png");
    image(rfourO, 460, 50);
    rFourSound.play();
  }
  if (key == 'p' || key == 'P') {    // rBFive = n/N
    rfiveP = loadImage("rfiveP.png");
    image(rfiveP, 460, 50);
    rFiveSound.play();
  }
}
void drawLeft() {
  image(lBoneQ, 20, 300);
  image(lBtwoW, 80, 300);
  image(lBthreeE, 140, 300);
  image(lBfourR, 200, 300);
  image(lBfiveT, 260, 300);
}
void drawRight() {
  image(rBoneY, 420, 300);
  image(rBtwoU, 480, 300);
  image(rBthreeI, 540, 300);
  image(rBfourO, 600, 300);
  image(rBfiveP, 660, 300);
}