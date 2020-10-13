// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスボタンを押したときに実行されるブロック
void mousePressed() {
  // カーソル位置に直径100pxの円を描く
  ellipse(mouseX, mouseY, 100, 100);
}

// mousePressed()が動くためには draw()を書く必要がある
void draw() {
}
