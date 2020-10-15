// gifAnimationライブラリを読み込む
import gifAnimation.*;

// GifMakerクラスを呼ぶ
GifMaker gifExport;

void setup() {
  
  // set canvas to 600px x 600px
  size(600, 600);
  
  // set background color to (R:194, G:251, B:252)
  background(194, 251, 252);
  
  // set color of shape to (R:252, G:236, B:201)
  fill(252, 236, 201);
  
  // draw elllipse(x, y, width, height)
  ellipse(300, 300, 500, 500);
  
  // set color of shape to R:240, G:124, B:247, opacity:150)
  int hair_x = 100;
  fill(155, 85, 39, 150);
  for (int i = 0; i<12; i++){
    rect(hair_x, 50, 100, 100);
    rect(hair_x+25, 75, 100, 100);    
    i = i + 1;
    hair_x = hair_x + 50;
  }
  
  fill(250, 250, 250);
  noStroke(); 
  // draw ellipse(x at center of ellipse, y at center of ellipse, width, height)
  ellipse(325, 250, 150, 100);
  ellipse(125, 250, 150, 100); 
  
  fill(30, 100, 30);
//  ellipse(125, 250, 50, 50); 
//  ellipse(325, 250, 50, 50);
  stroke(30, 100, 30); 
  strokeWeight(8); 
  line(100, 250, 150, 250);
  line(300, 250, 350, 250);
  
  fill(240, 200, 180);
  stroke(220, 160, 120);
  strokeWeight(5);
  // draw triangle(x1, y1, x2, y2, x3, y3);
  triangle(150, 350, 250, 400, 300, 325);  
  
  stroke(255, 100, 100);
  strokeWeight(10);
  noFill();
  // draw curve(x1 for beginning control point, y1 for beginning control point, 
  //            x2 for the first point, y2 for the first point
  //            x3 for the second point, y3 for the second point
  //            x4 for ending control point, y4 for endihng control point, 
  curve(200, 100, 150, 450, 450, 450, 550, 100); 
  
  
  frameRate(1); // 1fpsでアニメーションする
  // GIFアニメ出力の設定
  gifExport = new GifMaker(this, "export.gif"); // GifMakerオブジェクトを作る、第2引数にファイル名
  gifExport.setRepeat(0); // エンドレス再生
  gifExport.setQuality(10); // クオリティ(デフォルト10)
  gifExport.setDelay(1000); // アニメーションの間隔を20ms(50fps)に

}

int hair_y = 75;

void draw(){
  fill(250, 250, 250);
  noStroke(); 
  // draw ellipse(x at center of ellipse, y at center of ellipse, width, height)
  ellipse(125, 250, 150, 100); 
  ellipse(325, 250, 150, 100);
  
  if (second() %2==1){
      noStroke(); 
      ellipse(125, 250, 150, 100); 
      stroke(30, 100, 30); 
      
      strokeWeight(8); 
      line(300, 250, 350, 250);

      strokeWeight(1); 
      fill(155, 85, 39, 100);
      rect(450, second()*5+50, 100, 100);   
      rect(475, second()*5+75, 100, 100);   

    
  } else if (second() % 2 ==0){
    
      stroke(30, 100, 30); 
      strokeWeight(8); 
      line(100, 250, 150, 250);
      
      noStroke(); 
      ellipse(325, 250, 150, 100);
      

  }
  
    
  stroke(255, 100, 100);
  strokeWeight(10);
  noFill();
  // draw curve(x1 for beginning control point, y1 for beginning control point, 
  //            x2 for the first point, y2 for the first point
  //            x3 for the second point, y3 for the second point
  //            x4 for ending control point, y4 for endihng control point, 
  curve(second()*10, second()*10-100, 150, 450, 450, 450, 550, 100); 
  
  // GIFアニメ出力用のコード
  // 50fps * 3、つまり丸3秒録画する
  if(frameCount <= 2*30){
    gifExport.addFrame(); // フレームを追加
  } else {
    gifExport.finish(); // 終了してファイル保存
  }
}
