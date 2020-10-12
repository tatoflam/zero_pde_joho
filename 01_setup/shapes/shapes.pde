void setup() {
  
  // set canvas to 600px x 600px
  size(600, 600);
  
  // set background color to (R:194, G:251, B:252)
  background(194, 251, 252);
  
  // set color of shape to (R:75, G:240, B:30)
  fill(240, 145, 247);
  
  // draw rect(x, y, width, height)
  rect(50, 50, 150, 100);
  
  // set color of shape to R:240, G:124, B:247, opacity:150)
  fill(240, 145, 247, 150);
  rect(250, 50, 100, 100);
  rect(275, 75, 100, 100);

  noFill();  // set no fill (color off)
  rect(400, 50, 100, 100, 10);  // set r for corners
  fill(250, 160, 114);
  
  fill(114, 250, 155);
  // draw ellipse(x at center of ellipse, y at center of ellipse, width, height)
  ellipse(125, 250, 150, 100); 
  
  // set color of stroke
  stroke(60, 77, 255); 
  strokeWeight(15);  // set width of stroke
  ellipse(325, 250, 150, 100);
  
  // draw line (x at start, y at start, x at end, y at end);
  line(50, 350, 200, 450);
  
  stroke(255, 255, 0);
  strokeWeight(5);
  // draw triangle(x1, y1, x2, y2, x3, y3);
  triangle(250, 350, 350, 450, 450, 350);
  
  // draw polygon
  beginShape();
  vertex(50, 500);
  vertex(50, 525);
  vertex(85, 560);
  vertex(125, 575);
  vertex(165, 560);
  vertex(200, 525);
  vertex(200, 500);
  endShape(CLOSE);
  
  
  stroke(255, 100, 100);
  noFill();
  // draw curve(x1 for beginning control point, y1 for beginning control point, 
  //            x2 for the first point, y2 for the first point
  //            x3 for the second point, y3 for the second point
  //            x4 for ending control point, y4 for endihng control point, 
  curve(200, 100, 250, 500, 500, 500, 550, 100); 
}
