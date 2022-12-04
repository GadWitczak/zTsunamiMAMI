PImage cenario1, cenario2, zumbi1, zumbi2, zumbi3, zumbi4, humano;
PFont atari;
ArrayList<zumbi> zum = new ArrayList<zumbi>();
boolean[] keys = {false, false};
int iX, xC1, xC2;
int xH, yH, xZ, yZ, dX;
int xB, yB;
int xdC, ydC;
int zS;
int pontos=0;
boolean gRodando=false;
boolean gStart=false;
boolean gameOver=false;
humanos human;
obstaculo hole;
obstaculo box;
void setup() {
  size(900, 400);
  //CRIAÇÃO
  human = new humanos();
  hole = new obstaculo();
  box = new obstaculo();
  atari=createFont("atarifont.ttf", 48);
  cenario1=loadImage("cenario.png");
  cenario2=loadImage("cenario2.png");
  humano=loadImage("humano.png");
  zumbi1=loadImage("zumbi1.png");
  zumbi2=loadImage("zumbi2.png");
  zumbi3=loadImage("zumbi3.png");
  zumbi4=loadImage("zumbi4.png");
  //////////////////////////////////
  textFont(atari);
}

void draw() {
  background(0);
  cenario();
  pontuacao();
  human.aparece();
  human.virazumbi();
  hole.buraco();
  box.caixa();
  gameOver();
  gameStarto();
}

void keyPressed() {
  if (key==' ') {
    keys[0]=true;
  }
  if (key=='f') {
    keys[1]=true;
  }
}
void keyReleased() {
  if (key==' ') {
    keys[0]=false;
  }
  if (key=='f') {
    keys[1]=false;
  }
}

void gameOver() {
  if (gameOver==true) {
    fill(200, 50, 50);
    rect(0, 0, width, height);
    fill(0);
    textAlign(CENTER);
    textSize(36);
    text("GAME OVER", 450, height/2);
  }
}

void gameStarto() {
  if (keys[1]==true) {
    gStart=true;
    keys[1]=false;
  }
  if (gRodando==false) {
    fill(0);
    image(cenario1, 0, 0, width, height);
    textSize(36);
    textAlign(CENTER);
    text("PRESS 'F' TO START", 450, height/2);
  }
  if (gStart==true) {
    gRodando=true;
    iX=5;//CENÁRIO
    xC1=0;
    xC2=1800;
    xZ = width/2;
    yZ=300;
    xH = width;
    dX = 25;
    zS=0;
  }
}
void pontuacao() {
  fill(0);
  textSize(36);
  text("SCORE:" +pontos, 400, 50);
}
