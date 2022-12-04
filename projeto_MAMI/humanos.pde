class humanos {
  int contaRemocao;
  float cHZ=16;
  humanos() {
    contaRemocao=0;
  }
  void aparece() {
    noFill();
    noStroke();
    ellipse(xH+20, height*(3./4.), 20, 20);
    image(humano, xH, height*(3./4.), 40, 75);
    xH-=5;
    if (xH+37>=xB && xH<=xB+100) {
      xH=width;
    }
    if (xH<=0) {
      xH = width+75;
    }
    if (xdC<=xH && xdC+100>=xH) {
      xH=width+75;
    }
  }
  void virazumbi() {
    if (gRodando==true) {
      cHZ = dist(xH, height*(3./4.), xZ, height*(3./4.));
    }
    if (cHZ<=15 || gStart==true) {
      if (yZ==300) {
        zumbi zumzum = new zumbi(xZ-dX);
        zum.add(zumzum);
        xH =(int(random(1, 3)))*width;
        dX+=25;
        gStart=false;
      }
    }
    println(cHZ, yZ);
    for (int i=0; i<zum.size(); i++) {
      zumbi zumzum=zum.get(i);
      zumzum.aparece();
      zumzum.atualiza();
      zS = (zum.size())-1;
      contaRemocao++;
    }
    if (xZ>=xB && xZ<=xB+100 && yZ>=300 && contaRemocao>=60) {
      zum.remove(zS);
      dX-=25;
      contaRemocao=0;
      if (zum.size()==0) {
        gameOver=true;
      }
    }
    if (zum.size()==5) {
      pontos+=1;
      zum.remove(zS);
      dX-=25;
      contaRemocao=0;
    }
  }
}
