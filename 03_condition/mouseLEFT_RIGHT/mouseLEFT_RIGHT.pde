// 最初に1回だけ実行されるブロック
void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスボタンをドラッグした時だけ時に実行されるブロック
void mouseDragged() {
  
  // 左クリックが押された場合
  if (mouseButton == LEFT) {
    // カーソル位置に、青色(50, 67, 245)で線を引く
    stroke(50, 67, 245);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } 
  
  // 右クリックが押された場合
  else if(mouseButton == RIGHT){
    // 白い長方形（消しゴム）を書く
    fill(255, 255, 255);
    noStroke(); 
    rect(mouseX, mouseY, 20, 40);    
  }
}

// mouseDragged()が動くためには draw()を書く必要がある
void draw() {
}
