 import java.util.List;
Circulo c1, c2, c3, tmp;
List <Circulo>lista; // <> Operador Diamante
String q="";
float x,y;
int n=-1; // para el id del circulo
int k = 31; // numero de circulos en la lista
int w =0;
void setup(){
   fullScreen();
    lista = new <Circulo>ArrayList();
    tmp = null;
    for(int i=0; i <k ;i++){
       x = random(width);
       y = random(height);
       tmp = new Circulo(x,y,50,w);
       w++;
       lista.add(tmp);
    }
}

void draw(){
   background(0);
   for(int i=0; i < lista.size() ;i++){
       tmp = lista.get(i);
       if(i == lista.size()-1){
          tmp.SetColor(100,255,100);
        }
       tmp.dibuja();
   }
}

void mouseDragged(){
  if(ban){      
    tmp.x = mouseX - dx;
    tmp.y = mouseY - dy;
  }    
}

void mousePressed(){
  q="";
   for(int i=lista.size()-1; i>=0  ;i--){
     tmp = lista.get(i);
     ban = tmp.isAdentro(mouseX,mouseY);
     if (ban) {
       n = tmp.id;
       q += tmp.id;
       tmp.mover=true;
       break;
     }else{
       tmp.mover=false;
     }
   }
   
}

boolean ban;
float dx,dy;

void mouseReleased(){
   q = "";
   n = -1; // no se está seleccionando nigún círculo.
   tmp.mover = false;
   tmp = null;
}
