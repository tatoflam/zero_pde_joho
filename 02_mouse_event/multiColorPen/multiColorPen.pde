// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスボタンをドラッグした時だけ時に実行されるブロック
void mouseDragged() {
  stroke(245, 67, 245);
  line(pmouseX, pmouseY, mouseX, mouseY);

  // 少しずつ縦方向(Y軸)にずらして、別の色で線を書く
  stroke(212, 100, 245);
  line(pmouseX, pmouseY+5, mouseX, mouseY+5);
  
  stroke(50, 245, 230);
  line(pmouseX, pmouseY+10, mouseX, mouseY+10);
  
  stroke(110, 80, 90);
  line(pmouseX, pmouseY+15, mouseX, mouseY+15);
}

void draw() {
}
