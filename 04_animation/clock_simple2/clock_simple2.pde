void setup() {
  size(700, 700);
}

void draw(){
  // frameCountを色に反映
  fill(frameCount%256, minute()*4, second()*4, 128);

  //秒単位にX軸方、分単位にY軸方向に動かしながら50x50pxの四角を書く
  rect(second()*10+10, minute() *10+10, 50, 50);
}
