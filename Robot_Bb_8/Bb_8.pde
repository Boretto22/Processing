void setup(){
  size(900, 900);
  background(255);
}

void draw(){
  background(255);
  float y = mouseY;
  float x = mouseX;

  drawDetalls2Cos(x,y);
  drawCos(x,y);
  drawDetallsCap(x,y);
  drawCap(x,y);
  drawDetallsCos(x,y);
  drawAntenas(x,y);
  drawUlls(x,y);

}

void drawCos(float x, float y){
  stroke(0);
  strokeWeight(10);
  noFill();
  circle(x,y,450);
}

void drawDetallsCos(float x, float y){
  //linies
  line(x-200,y-100,x+200,y+100);
  line(x-200,y+100,x+200,y-100);
  //punts
  strokeWeight(8);
  point(x-125,y-90);
  point(x-147,y-45);
  point(x-125,y+90);
  point(x-147,y+45);
  point(x+125,y-90);
  point(x+147,y-45);
  point(x+125,y+90);
  point(x+147,y+45);
  fill(255);
  //centre centre
  strokeWeight(10);
  circle(x,y,170);
  strokeWeight(25);
  stroke(255,165,0);
  circle(x,y, 140);
  fill(169);
  strokeWeight(0);
  fill(169);
  noStroke();
  circle(x,y,70);
  
}

void drawDetalls2Cos(float x, float y){
  strokeWeight(15);
  stroke(255,165,0);
  line(x-135,y+175,x+135,y+175);
  line(x-147,y+165,x+147,y+165);
  line(x-165,y-145,x+165,y-145);
  stroke(169);
  line(x-154,y+160,x+154,y+160);
  line(x-177,y-132,x+177,y-132);
}

void drawCap(float x, float y){ //<>//
  noFill();
  stroke(0);
  strokeWeight(10);
  arc(x,y - 212, 300, 300, PI, 2 * PI);
  fill(255);
  strokeWeight(7);
  beginShape();
  vertex(x-146,y-209);
  vertex(x-135,y-198);
  vertex(x+135,y-198);
  vertex(x+146,y-209);
  endShape(CLOSE);
}

void drawAntenas(float x,float y){
  strokeWeight(5);
  stroke(0);
  line(x+75,y-345,x+75,y-400);
  line(x+55,y-355,x+55,y-375);
}

void drawUlls(float x,float y){
  //Ull blau
  stroke(255,165,0);
  fill(255);
  strokeWeight(5);
  circle(x+45, y-265, 48);
  strokeWeight(3);
  stroke(0);
  fill(25,25,120);
  circle(x+45, y-265, 35);
  strokeWeight(3);
  fill(72,99,180);
  circle(x+45,y-265, 18);
  strokeWeight(0);
  fill(255);
  circle(x+40 + mouseX/80,y-270 + mouseY/80, 5);
  //Ull negre
  fill(0);
  circle(x-35, y-285, 68);
  fill(255,0,0);
  circle(x-37 + mouseX/80,y-290 + mouseY/80, 5);
  
}

void drawDetallsCap(float x,float y){
  stroke(255,165,0);
  strokeWeight(15);
  line(x-89,y-330,x+89,y-330);
  line(x-74,y-340,x+74,y-340);
  line(x-145,y-225,x+145,y-225);
  stroke(169);
  strokeWeight(10);
  line(x-145,y-215,x+145,y-215);
  
}
