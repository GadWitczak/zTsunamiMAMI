class obstaculo {
  int x, y, w, h;
  int xc, yc, wc, hc;
  obstaculo() {
    this.x=3*width;
    this.y=314;
    this.w=100;
    this.h=height-314;
    this.xc=width;
    this.yc=329;
    this.wc=100;
    this.hc=50;
  }
  void buraco() {
    fill(0);
    rect(x, y, w, h);
    x-=5;
    if (x<=-w) {
      x=(int(random(4, 6)))*width;
    }
    xB=x;
    yB=y;
  }
  void caixa() {
    if (gRodando==true) {
      fill(127, 50, 50);
      rect(xc, yc, wc, hc);
      xc-=5;
      if (xc<=(-wc)) {
        xc=(int(random(2, 4)))*width;
      }
      xdC=xc;
      ydC=yc;
    }
  }
}
