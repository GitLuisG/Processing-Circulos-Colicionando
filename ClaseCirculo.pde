class Circulo{
  float x;
  float y;
  float diametro;
  int id;
  int acolor1 = 255;
  int acolor2 = 255;
  int acolor3 = 255;
  float radio;
  
  boolean mover;

  Circulo(float a, float b, float c, int d){
    x = a;
    y = b;
    diametro = c;
    id = d;
    ellipseMode(CENTER);  
    mover = false;
  }

  void dibuja(){
    fill(acolor1,acolor2,acolor3);
    ellipse(x,y,diametro,diametro);
    textSize(30);
    fill(0);
    text(""+(int)id,x-20,y+15);
  }

  boolean isAdentro(float a, float b){
    if(dist(x,y,a,b) > diametro){
    return false;
    }
    else{
    return true;
    }
  }
  
  int idReturn(){
   return id;
  }
  
  void setColor(int elcolor, int elcolor2, int elcolor3){
   acolor1 = elcolor;
   acolor2 = elcolor2;
   acolor3 = elcolor3;
   
  }

}
