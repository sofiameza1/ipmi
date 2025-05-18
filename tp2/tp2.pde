//Meza González Sofía Jacqueline
//Legajo: 122795/5
//Comisión 1

int posX, posY, anchoBot, altoBot;
int miVariable = 1;
float logo = random (120, 125);
PFont t;
PImage intro; //jurassicparklogo
PImage pantalla1; //
PImage pantalla2; //posterjp
PImage efecto2; //efecto primer pantalla
PImage efecto; //efecto film

void setup() {
  t = loadFont("Impact-48.vlw");
  textFont(t, 35);
  background(0);
  size(640, 480);
   posX=600;
  posY=430;
  anchoBot=50;
  altoBot=50;
  efecto2 = loadImage("—Pngtree—white film grain texture transparent_8626960.png");
  efecto = loadImage("—Pngtree—old film grain texture effect_9067879.png");
  pantalla2 = loadImage("posterjp.jpeg");
  pantalla1 = loadImage("t-rex.jpeg");
  intro = loadImage("jurassicparklogo.jpg");
  println(frameCount);
}

void draw(){
  background(0);
    miVariable = frameCount/1;
    
  //Primera pantalla
  logo = random (-100, -96);
  println(miVariable);
   image(intro, 120,logo,400,650);
   
   //efecto film pantalla1
   logo = random (-100, -98);
   image(efecto2,logo,0,840,480);
 
//Texto Primer pantalla
  logo = random (220, 222);
  textSize(20);
  fill(255);
  text("Writer: Michael Crichton", logo, 350, 450, 200);

     //pantalla negra
   fill(0);
   rect((miVariable-1500),0,1000,1000);

  fill(255);
   //Segunda pantalla
   image(pantalla1,(miVariable-740), 0, 640, 480);
     logo = random (50, 52);
    text("Director: Steven Spielberg", logo, (miVariable-300), 450, 200);
    text("Production: Steven Spielberg", logo, (miVariable-350), 450, 200);
    text("Production: Kathleen Kennedy", logo, (miVariable-400), 450, 200);
    text("Production: Gerald R. Molen", logo, (miVariable-450), 450, 200);
    
fill(255);
if(frameCount>750){
    //Última pantalla
     image(pantalla2, 0, (miVariable-1150), 640, 580); 
 }
  
     if(frameCount>990){
  text("MAIN ACTORS", (miVariable-1015), (logo+50), 450, 200);
  text("Sam Neill: Alan Grant", (miVariable-1025),(logo+100), 450, 200);
  text("Laura Dern: Dra. Ellie Sattler", (miVariable-1035),(logo+150), 450, 200);
  text("Jeff Goldblum: Dr. Ian Malcolm", (miVariable-1045),(logo+200), 450, 200);
  text("Richard Attenborough: John Hammond", (miVariable-1055),(logo+250), 450, 200);
  text("Joseph Mazzello: Tim Murphy", (miVariable-1065),(logo+300), 450, 200);
  text("Ariana Richards: Lex Murphy", (miVariable-1075),(logo+350), 450, 200);
     }
     
     if (frameCount>1080){
       frameCount--;}
      //efecto film2 y 3
   logo = random (-100, -98);
   image(efecto,logo,0,840,480);
   //botón
    fill(255,0,10);
    ellipse(posX, posY, anchoBot, altoBot);
}


void mousePressed() {
  if (frameCount>10) {
    if (mouseX>posX && mouseX<posX+anchoBot && mouseY>posY && mouseY<posY+altoBot) {
      frameCount = 1;
    }
  }
}
