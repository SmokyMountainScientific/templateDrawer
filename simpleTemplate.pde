import processing.pdf.*;

///////// conversions //////
float size = 2.83;      // convert from pixels to mm
float inchConv = 25.4;  //  convert from mm to in
///////// outline /////////
float xPos = 0;
float yPos = 30;
float xSz = 5.5*inchConv;   // size in inches
float ySz = 3*inchConv;
///////// circles //////
float circ1X = 3*size;
float circ1Y = 15*size;
float circ1Diam = 14*size/2;
float circ2X = -35*size;
float circ2Y = -45*size;
float circ2Diam = 34*size/2;


void setup(){
  size (275,350);  // size of window
  beginRecord(PDF,"simpleTemplate.pdf");
  background(255);  // white background
  stroke(0);         // black lines
  noLoop();
  noFill();
  ellipseMode(CENTER);  // define positions from center points
  rectMode(CENTER);

}

void draw(){
  
   translate(width/2,height/2);
   line(0,50,0,-20);
   line(-50,0,20,0);
   fill(0);               // text color
   text("line 1",20,50);
   text("Simple template text",-20,-10);
   noFill();    /*          // 
   ellipse(circ1X,circ1Y,circ1Diam,circ1Diam);
   ellipse(circ2X,circ2Y,circ2Diam,circ2Diam);
   rect(-10,30,100,150);
   */
   nema17(40,0,0);
   
   hole(-30,-70,10);
   endRecord();
}

void hole(float x, float y, float rad){
  translate(x,y);
  ellipse(0,0,rad,rad);
  line(10,0,-10,0);
  line(0,10,0,-10);
  translate(-x,-y);
  
}