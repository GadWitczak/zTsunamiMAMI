class zumbi {
  int x, y, w, h;
  int temp, tRun, tCorrendo=60;
  int eZumbi;
  final int CORRENDO=0;
  final int PULANDO=1;
  zumbi(int xZ) {
    this.x=xZ;
    this.y=300;
    this.w=50;
    this.h=75;
    eZumbi=CORRENDO;
  }
  void aparece() {
    yZ=y;
    tRun++;
    noStroke();
    noFill();
    ellipse(x+10, y, 20, 20);
    if (eZumbi==CORRENDO) {
      if (tRun/10==0) {
        image(zumbi3, x, y, w, h);
      }
      if (tRun/10==1) {
        image(zumbi1, x, y, w, h);
      }
      if (tRun/10==2) {
        image(zumbi2, x, y, w, h);
      }
      if (tRun/10==3) {
        image(zumbi3, x, y, w, h);
      }
      if (tRun/10==4) {
        image(zumbi4, x, y, w, h);
      }
      if (tRun>=49) {
        tRun=1;
        image(zumbi1, x, y, w, h);
      }
    } else {
      image(zumbi2, x, y, w, h);
    }
  }
  void atualiza() {
    if (eZumbi==CORRENDO) {
      tCorrendo++;
    }
    if (eZumbi==PULANDO) {
      temp++;
      tCorrendo=0;
    }
    if (temp>=60) {
      y = 300;
      temp=0;
      keys[0]=false;
      keyPressed=false;
      eZumbi=CORRENDO;
    }
    if (keys[0]==true && tCorrendo>=60) {
      y = 250;
      eZumbi=PULANDO;
    }
    if (x+(w/2)>=xdC && x<=xdC+5 && y==300) {
      x-=5;
      tCorrendo=0;
    } else if (xdC<=x && xdC+100>=x && y<=299) {
      y=250;
    }
    if (x<=(-w)) {
      gameOver=true;
    }
  }
}
