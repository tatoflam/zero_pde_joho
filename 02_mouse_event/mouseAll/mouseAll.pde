// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスボタンを押したときに実行されるブロック
void mousePressed() {
  // カーソル位置に楕円を描く
  fill(245, 163, 230);
  ellipse(mouseX, mouseY, 30, 45);
}

// マウスボタンが動いた時に実行されるブロック
void mouseMoved() {
  // カーソル位置に、色(246, 76, 50)で円を描く
  fill(200, 200, 240);
  noStroke();
  ellipse(mouseX, mouseY, 5, 5);
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
  
}

void draw() {
}
