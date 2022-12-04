void cenario() {
  if (xC1==-1800) {
    xC1=1800;
  }
  if (xC2==-1800) {
    xC2=1800;
  }
  xC1-=iX;
  xC2-=iX;
  image(cenario1, xC1, 0);
  image(cenario2, xC2, 0);
}
