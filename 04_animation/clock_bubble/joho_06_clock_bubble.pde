void setup(){
  size(600, 400);
  textSize(100);
}

void draw(){
  // 秒数を変数に入れる
  int s = second();
  
  // 分数を変数に入れる
  int m = minute();
  
  // 時間を変数に入れる
  int h = hour();
  
  noFill();
  background(255,255,255);
  
  // 赤で時間の円を描く
  stroke(237, 133, 72);
  ellipse(150, 200, h*12.5, h*12.5);

  // 黄で分の円を描く
  stroke(245, 210, 5);
  ellipse(300, 200, m*5, m*5);
  
  // 青で秒の円を描く
  stroke(60, 60, 200);
  ellipse(450, 200, s*5, s*5);


  // 赤で時間の数字を描く（２桁）
  fill(237, 143, 82);
  text(nf(h,2), 100, 250);

  // 黄で分の数字を描く（２桁）
  fill(245, 220, 20);
  text(nf(m,2), 250, 250);
  
  // 青で秒の数字を描く（２桁）
  fill(60, 65, 205);
  text(nf(s,2), 400, 250);
}
