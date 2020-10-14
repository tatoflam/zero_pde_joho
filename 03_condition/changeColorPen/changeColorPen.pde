// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// 色を判断するための変数
int c = 0;

// マウスボタンをドラッグした時だけ時に実行されるブロック
void mouseDragged() {
  
  // 秒を5で割り、余りを求める
  c = second() % 5;
  switch(c) {
    case 0:
      fill(5, 11, 250);
      break;
    case 1:
      fill(5, 250, 80);
      break;
    case 2:
      fill(250, 250, 0);
      break;      
    case 3:
      fill(250, 132, 5);
      break;
    case 4:
      fill(250, 5, 50);
      break;
  }
  stroke(255,255,255);
  ellipse(mouseX, mouseY, 100, 100);
}

// mouseDragged()が動くためには draw()を書く必要がある
void draw() {
}
