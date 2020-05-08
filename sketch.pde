import java.util.*;

Circulo c1, c2, c3,tmp;
List <Circulo> list;


int r=0;
int k = 31;
float x,y;
int w = 0;
int n =0;

String q = "";

int id;


void setup(){
  fullScreen();
  list = new <Circulo> ArrayList();
  tmp = null;
  for(int i = 0; i < k; i++){
    x=random(width);
    y=random(height);
    tmp = new Circulo(x, y, 50, w);
    w++;
    list.add(tmp);
  }
  
}

//list.size()
boolean ban;
  
  void draw(){      
        background(0);
      
      for(int i = 0; i<list.size();i++){
       
        tmp = list.get(i);
            if(i == list.size()-1){
              tmp.setColor(100,255,100);
            }
        tmp.dibuja();
        id=tmp.idReturn();
      } 
  }
  
float dx,dy;

  void mouseDragged(){
    tmp=list.get(id);
    if(tmp.mover){
      if(ban){
      
      tmp.x = mouseX - dx;
      tmp.y = mouseY - dy;
      }
    }
  }
  
  void mousePressed(){
    tmp=list.get(id);
    dx=mouseX-tmp.x;
    dy=mouseY-tmp.y;
    ban = tmp.isAdentro(mouseX,mouseY);
    if(ban){
      tmp.mover = true;
    }else{
      tmp.mover = false;
    }
  }
