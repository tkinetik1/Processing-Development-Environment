//int dx, dy;
//float speedx, speedy;
int counter = 0;
PFont f;


int[] arrxp = {22,22,22,22};
int[] arryp = {44,44,44,44};
float[] arrxs = {1.0,2.0,0.5,1.5};
float[] arrys = {2.0,1.0,1.5,0.5};
int[] poll;
//int[] poll1 = {0,1,2,3,4,5,6,0,1,2,3,4,5,6,0,1,2,3,4,5,6,0,1,2,3,4,5,6,0,1,2,3,4,5,6,0,2,4,5,6,0,2,0,2,0,2,0,2,0,2};



void setup() {
  
  background(100);
  size(600,600);
  frameRate(120);
  counter = 0;
 
String[] stuff = loadStrings("poll.txt");
poll = int(split(stuff[0], ','));

//int a = stuff[0]
//int b = stuff[1]
//int c = stuff[2]
//int d = stuff[3]
//int e = stuff[4]
//int f = stuff[5]





//int index = int(random(poll.length));
//println(index);
//println(poll); 

 f = createFont("TimesNewRoman",12);
 textFont(f,12);
  
}


void draw() {
  //background(255,25,25,.4);
  // translate(width/2, height/2);
   //fill(255,100,100);
  
  for ( int i = 0; i < arrxp.length; i++) {
    int index = int(random(poll.length));
      
  
//  rect(dx+5,dy+5,10,10);
//  rect(dx+10,dy+10,10,10);
//  rect(dx+15,dy+15,10,10);
//  rect(dx+20,dy+20,10,10);
//  rect(dx,dy,10,10);

//noStroke();

  
fill(220,2220,220);
    rect(arrxp[i],arryp[i],10,10);
    //rect(arrxp[i]+50,arryp[i]+50,10,10);
  
  
  arrxp[i] += arrxs[i];
  arryp[i] += arrys[i];
  
  
  
 if( counter > 50) {
  println("counter reset");

  counter = 0;
  
  for( int j = 0; j <=0; j++) {
   
    println(poll[index]);
      
      
    if (poll[index] == 0) {
    fill(#EFFF17);
    text("School", arrxp[i]+25, arryp[i]);
  }
  
  if (poll[index] == 1) {
  fill(#F57F00);
    text("Business", arrxp[i]+25, arryp[i]);
  }
  
  if (poll[index] == 2) {
  fill(#1781FF);
    text("Family", arrxp[i]+25, arryp[i]);
  }
  
  if (poll[index] == 3) {
  fill(#3917FF);
    text("Hobbies", arrxp[i]+25, arryp[i]);
  }
  
  if (poll[index] == 4) {
  fill(#F5A800);
    text("Sports", arrxp[i]+25, arryp[i]);
  }
  fill(#9E2BA5);
  if (poll[index] == 5) {
  
    text("Party", arrxp[i]+25, arryp[i]);
  }
  fill(#FF5F7F);
  if (poll[index] == 6) {
  
    text("Relationship", arrxp[i], arryp[i]);
  } 
    
    
     //String[] pieces = split(poll[j], ',');
    // fill((poll[index]),(poll[index]),(poll[index]));
    //rect(arrxp[i],arryp[i],100,100);
    
   
    
   // rect(arrxp[i]-25,arryp[i]-25,75,75);
 
    //text(poll[j],arrxp[i],arryp[i]);
    
    //println(poll[j]);
    
    //if (poll1[j] >= 0 ) {
    
      
      
  //text(poll1[j], arrxp[i],arryp[i]);
 
  //int index = (random(poll.length));
  //println(index);

//fill(0,120,220); 

  //text((poll1[j]), arrxp[i],arryp[i]);
  //text(index, arrxp[i],arryp[i]);
   fill((poll[index]),(poll[index]),(poll[index]));
   text((poll[index]), arrxp[i], arryp[i]); 
  //}
  
  arrxs[i] = 3 - random(6)+1;
  arrys[i] = 3 - random(6)+1;
  
  
     
}  
  }
  
  
  
  
  counter++;
  
  if (arrxp[i] > width) {
    arrxp[i] = 0;
    
  }
  
  if (arrxp[i] < 0 ) {
    arrxp[i] = width;
     
  }
  
  if (arryp[i] > height) {
    arryp[i] = 0;
    
  }
  
  if (arryp[i] < 0 ) {
    arryp[i] = height;
     
  }
 
  }

}
