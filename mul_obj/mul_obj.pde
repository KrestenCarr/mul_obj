Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;  // the second instance of the Flower class
Flower myFlower3;
square mySquare; 

void setup() {
  size(1000, 1000);
  int _r = 60;
  int _petals = 7;
  float _x = width/2;
  float _y = height/2;
  int _pc = #FFA000;
  int offset = 350;
  float _ex = 60;
  int _squareColor = #FFA000;

  myFlower2 = new Flower(_r, _petals+3, _x+random(-500, 500), _y+offset, _pc);
  myFlower3 = new Flower(_r, _petals+7, _x+random(-500, 500), _y-offset, _pc);
  mySquare = new square (_x, _y, _ex, _squareColor);
}

void draw() {
  int _r= 60;
  int _petals=7;
  int _pc=#FFA000;
  background(#43AF76);

  myFlower1 = new Flower(_r, _petals, mouseX, mouseY, _pc); //den er her fordi X og Y koordinater bliver opdateret
  myFlower1.display();
  myFlower1.coll(myFlower2);
  myFlower1.coll(myFlower3);
  myFlower1.coll(mySquare);
  myFlower2.display();
  myFlower2.move(/*5*/);
  myFlower2.bounce();
  myFlower2.coll(myFlower1);
  myFlower2.coll(myFlower3);
  myFlower2.coll(mySquare);
  myFlower3.display();
  myFlower3.move(/*7*/);
  myFlower3.bounce();
  myFlower3.coll(myFlower1);
  myFlower3.coll(myFlower2);
  myFlower3.coll(mySquare);
  //myFlower3.coloring();
  mySquare.display();
  mySquare.move();
  mySquare.bounce();
  mySquare.coll(myFlower1);
  mySquare.coll(myFlower2);
  mySquare.coll(myFlower3);
}
