Car car;
Person person;
Gun gun;
color bColor=color(255, 255, 255);
PImage bg;
ArrayList<Enemy> enemies;
ArrayList<Bullet> bullets;
float angle, speed;
int time, tTime;
boolean tick;

void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  enemies= new ArrayList<Enemy>();
  bullets= new ArrayList<Bullet>();
  gun= new Gun(width/2.0, height/2.0);
  bg = loadImage("GTAback2.jpg");
  time=millis();
  tTime=1000;

}
/*
void setup(){
    
    size(600, 400);
    background(0, 0, 0);
    car=new Car(100, 100, 30, 50, 3);
    person= new Person(0, 0, 10, 1, 0);
    enemies= new ArrayList<Enemy>();
    
}
*/

boolean close(float x1, float y1, float x2, float y2){
  if(((x1 - x2) * (x1 - x2)) < 100 && ((y1 - y2) * (y1 - y2)) < 100){
    println("true");
    return true;    
  }
  else{
    println("false");
    return false;
  }
}

void draw(){
  int passedTime = millis() - time;
    if (passedTime < tTime) {
    background(bg);
  }
  else{
    background(0, 0, 0);
    Enemy e = new Enemy(10, 0);
    if (enemies.size() < 20){
      enemies.add(e);
    }
    for(Enemy i: enemies){
      i.display();
    }
    person.display();
    for (Bullet b: bullets){
      b.display();
      ArrayList<Integer> deads = new ArrayList();
        for(Enemy i: enemies){
          if(close(i.getX(), i.getY(), b.getX(), b.getY())){
               deads.add(enemies.indexOf(i));
             }
        }
      int shift = 0;
      ArrayList<Integer> olds = new ArrayList();
       for(int x = 0; x < deads.size(); x++){
         olds.add(deads.get(x));
         enemies.remove(x - shift);
         try{
           Integer next = deads.get(x + 1);
           for(Integer n: olds){
             if(n > deads.get(x)){
               shift = shift + 1;
             }
           }
         }
         catch(IndexOutOfBoundsException f){
         }
           
           
      }
      
  }
    angle=0;
    speed=10;
  }
}



void keyPressed(){
    if (key=='w'){      
        for (Enemy i: enemies){
            i.setY(i.getY()+speed);
        }
    }
    if (key=='s'){
        for (Enemy i: enemies){
            i.setY(i.getY()-speed);
        }
    }
    if (key=='a'){
      angle+=1;
      for (Enemy i: enemies){
        i.setX(i.getX()+speed);
        }
    }
    
    if (key=='d'){
      angle+=1;
      for (Enemy i: enemies){
        i.setX(i.getX()-speed);
        }
    } 
}
void mouseDragged(){
     gun.move();
     Bullet b = new Bullet();
     if (bullets.size()>15){
       bullets.remove(15);
     }
     else{
       bullets.add(b);
       println(bullets.size());
     }
     
     try{
        for (Bullet i: bullets){
        if (i.getX()==0 ||
          i.getX()==width||
          i.getY()==0||
          i.getY()==height){
            bullets.clear();
         }
         else{
         i.move();
         }
       }
     }catch (Exception e){
          printStackTrace(e);
     }
}
    

void mouseReleased(){
    bullets.clear();
}
