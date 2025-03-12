color c;
String s;
float r;
boolean Dibuixar;

void setup() {
  size(800, 800);
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);

  c = color(255);
  s = "RECT";
  r = 20;
  Dibuixar = false;
}

void Color() {
  if (key == 'R' || key == 'r') {
    c = color(255, 0, 0);
  } else if (key == 'B' || key == 'b') {
    c = color(0, 0, 255);
  } else if (key == 'G' || key == 'g') {
    c = color(0, 255, 0);
  }
  fill(c);
  println("COLOR: " + red(c)+"-"+green(c)+"-"+blue(c));
}

void Tamany() {
  if (keyCode == UP) {
    r+=10;
  } else if (keyCode == DOWN) {
    r-=10;
    if (r <= 5) {
      r = 5;
    }
  }
  println("SIZE: " + r);
}

void Figura() {
  if (key == '1') {
    s = "RECT";
  } else if (key == '2') {
    s = "CIRCLE";
  } else if (key == '3') {
    s = "TRIANGLE";
  }
  println("SHAPE: " + s);
}

void AbiliDesabili() {
  if (key=='d' || key=='D') {
    Dibuixar = !Dibuixar;
  }
  println("ENABLE DRAWING:"+Dibuixar);
}

void keyPressed() {
  Esborrar();
  AbiliDesabili();
  Figura();
  Tamany();
  Color();
}

void dibuixaFigura() {
  if (Dibuixar) {
    fill(c);
    if (s == "RECT") {
      rect(mouseX, mouseY, r, r);
    } else if (s == "CIRCLE") {
      ellipse(mouseX, mouseY, r, r);
    } else if (s == "TRIANGLE") {
      triangle(mouseX, mouseY - r, mouseX - r, mouseY + r, mouseX + r, mouseY + r);
    }
  }
}

void Esborrar() {
  if (keyCode == DELETE) {
    background(220);
  }
}

void draw() {
  dibuixaFigura();
}
