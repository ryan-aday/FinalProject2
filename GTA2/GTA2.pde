Car car;
Person person;
Gun gun;
color bColor=color(255, 255, 255);
PImage bg;
ArrayList<Enemy> enemies;
ArrayList<Bullet> bullets;
int a=1;
float angle, speed;
int time, tTime;
boolean tick;

void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  enemies= new ArrayList<Enemy>();
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
     bullets.add(b);
}

void mouseReleased(){
    for (Bullet i: bullets){
         i.move();
     } 
}