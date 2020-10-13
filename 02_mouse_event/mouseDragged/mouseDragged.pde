// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスボタンをドラッグした時だけ時に実行されるブロック
void mouseDragged() {
  // カーソル位置に、青色(50, 67, 245)で幅10px, 高さ20pxの長方形を描く
  // lineの色はstroke()で指定する
  stroke(50, 67, 245);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

// mousePressed()が動くためには draw()を書く必要がある
void draw() {
}
