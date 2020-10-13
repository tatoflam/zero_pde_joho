// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスボタンが動いた時に実行されるブロック
void mouseMoved() {
  // カーソル位置に、色(246, 76, 50)で直径5pxの円を描く
  fill(246, 76, 50);
  noStroke();
  ellipse(mouseX, mouseY, 5, 5);
}

// mouseMoved()が動くためには draw()を書く必要がある
void draw() {
}
