void nema17(float x,float y, float angle){
  angle = angle*2*PI/360;   // convert angle to rad
  float pos = 31*size/2;    // screw hold position
  float s = 3*size/2;
 translate(x,y);
 rotate(angle);
 rect(0,0,42.3*size,42.3*size);
 hole(0,0,23*size);
 hole(0,0,5*size);
 hole(pos,pos,s);
 hole(pos,-pos,s);
 hole(-pos,-pos,s);
 hole(-pos,pos,s);

  rotate(-angle);
  translate(-x,-y);
}