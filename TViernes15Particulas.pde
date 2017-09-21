ArrayList <particula> particulas;
void setup(){
  size(450,450);
  particulas = new ArrayList<particula>();
   for (int i=0; i<600; i++){
    particulas.add(new particula());
  }
}

void draw(){
  background(200); 
 for(particula p : particulas){
   p.display();
   p.chocar();
   p.movimiento();
 } 
}

void mousePressed(){
  particula foo = new particula(mouseX, mouseY);
  particulas.add(foo);
}

class particula{
  float x,y,v,a,t,w;
  float px=sin(x);
  float py= cos(y);
  color c;

particula(float x_,float y_, float v_, float a_, float t_, color c_){
  x = x_;
  y = y_;
  v = v_;
  a = a_;
  t = t_;
  c = c_;
}
  particula(){
    x = random(430);
    y = random (430);
    v = random (20);
    a = random (TWO_PI);
    t = random (2,40);
    c = color (random (0), random (0), random(255));
    w=random(15);
  }
  
  particula(float x_, float y_){
    x = x_;
    y = y_;
    v = random (6);
    a = random (TWO_PI);
    t = random (20,80);
    c = color (random (0), random (255), random(0)); 
  }

 void display(){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill(c);
  ellipse(1,1,t,t);
  popMatrix();
}

 void movimiento(){
   float sushu=TWO_PI/25;
  x=x+sin(a)*v*sushu;
  y=y+sin(a-90)*w*sushu;
 }
 
  void chocar(){
 
     if(x <= 15)
    {
     a = 1; 
    }
     if(x >= 440)
    {
     a = a*-2; 
    }
      if(y <= 15)
    {
     a = a*-1; 
    }
    if(y >= 440)
    {
     a = a*-1; 
    }
  }
}  