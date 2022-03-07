//paint app
//Howard Zhu
//Mar.7 block 2-3


//colors
color pink =#FFC0CB;
color black =#000000;
color cyan =#00FFFF;
color orange= #FFA500;
color yellow= #FFFF00;
color green= #00FF00;
color red= #FF0000;
color blue =#0000FF;
color white =#FFFFFF;
color grey= #7C7A7A;

PImage stamp;
float slider,thickness,side,r;
color selected;
boolean mode;

void setup(){
  size(800,800);
  background(white);
  stamp=loadImage("minecraft.png");
  slider=380;
  mode=false;
}



void draw(){
  fill(grey);
  stroke(grey);
  rect(0,0,100,800);
  //stamp
  image(stamp,120,20,80,80);
  //color pallete
  fill(red);
  rect(10,10,80,30);
    fill(yellow);
  rect(10,50,80,30);
    fill(orange);
  rect(10,90,80,30);
    fill(green);
  rect(10,130,80,30);
    fill(blue);
  rect(10,170,80,30);
    fill(cyan);
  rect(10,210,80,30);
    fill(pink);
  rect(10,250,80,30);
    fill(white);
  rect(10,290,80,30);
    fill(black);
  rect(10,330,80,30);
  
  fill(#2F8177);
  rect(20,630,70,40);
  textSize(20);
  fill(#70E849);
  text("New",35,650);
  //thickness control
  stroke(black);
  strokeWeight(5);
  line(50,380,50,550);
  strokeWeight(0);
  fill(black);
  circle(50,slider,25);
  thickness=map(slider,380,550,5,20);
  
  //indicator
  fill(white);
  stroke(white);
  strokeWeight(1);
  circle(50,580,40);
  r=map(slider,380,550,10,30);
  fill(selected);
  stroke(selected);
  circle(50,580,r);
  side=map(slider,380,550,20,120);
}




void mouseDragged(){
  if(mouseX>25&&mouseX<75&&mouseY>380&&mouseY<550){
    slider=mouseY;}
    if(mouseX>25&&mouseX<50&&mouseY>380&&mouseY<550){
    slider=mouseY;}
  if (!mode && mouseX>100){
    fill(selected);
    stroke(selected);
    circle(mouseX,mouseY,thickness);
  }
  if (mode && mouseX>100){
    imageMode(CENTER);
    image(stamp,mouseX,mouseY,side,side);
    imageMode(CORNER);
  }
  
  
}


void mouseReleased(){
  if(mouseX>10&&mouseX<90&&mouseY>10&&mouseY<40){selected=red;}
  if(mouseX>10&&mouseX<90&&mouseY>50&&mouseY<80){selected=yellow;}
  if(mouseX>10&&mouseX<90&&mouseY>90&&mouseY<120){selected=orange;}
  if(mouseX>10&&mouseX<90&&mouseY>130&&mouseY<160){selected=green;}
  if(mouseX>10&&mouseX<90&&mouseY>170&&mouseY<200){selected=blue;}
  if(mouseX>10&&mouseX<90&&mouseY>210&&mouseY<240){selected=cyan;}
  if(mouseX>10&&mouseX<90&&mouseY>250&&mouseY<280){selected=pink;}
  if(mouseX>10&&mouseX<90&&mouseY>290&&mouseY<320){selected=white;}
  if(mouseX>10&&mouseX<90&&mouseY>330&&mouseY<360){selected=black;}
  if(mouseX>120&&mouseX<200&&mouseY>20&&mouseY<100){mode=!mode;}
  if (mode && mouseX>100){
    imageMode(CENTER);
    image(stamp,mouseX,mouseY,side,side);}
    imageMode(CORNER);
  if (mouseX>20&&mouseX<80&&mouseY>630&&mouseY<670){
    background(white);
  }
  
}
