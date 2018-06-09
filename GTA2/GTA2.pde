import processing.core.PApplet;
import processing.sound.*;

//Effects and Pics
SoundFile file, backS, deathScream;
PImage bg, inst, gameOver;

Car car;
Person person;
Gun gun;
color bColor=color(255, 255, 255);
ArrayList<Enemy> enemies;
ArrayList<Bullet> bullets;
float angle, speed;
int time, tTime;
boolean tick, fired;

boolean gOver=false;

void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  enemies= new ArrayList<Enemy>();
  bullets= new ArrayList<Bullet>();
  gun= new Gun(width/2.0, height/2.0);
  
  //For Start And Game Over Image
  bg = loadImage("GTAback2.jpg");
  inst= loadImage("Instructions.jpg");
  gameOver=loadImage("gameOver.png");
  time=millis();
  tTime=1000;
  
  //Shotgun SF
  file=new SoundFile(this, "shotgunS.wav");
  fired=false;
  
  //Background Music
  backS=new SoundFile(this, "background.mp3");
  backS.play();
  
  //Death Sounds
  deathScream= new SoundFile(this, "death.wav");
  /*
  //Test
  file.play();
  */
}

boolean close(float x1, float y1, float x2, float y2){
  if(((x1 - x2) * (x1 - x2)) < 100 && ((y1 - y2) * (y1 - y2)) < 100){
    //println("true");
    return true;    
  }
  else{
    //println("false");
    return false;
  }
}

void draw(){
  long a=System.nanoTime();
  
  int passedTime = millis() - time;
  if (passedTime < tTime) {
    background(bg);
  }else if (passedTime< tTime+5000){
    background(inst);
  }else{
    background(0, 0, 0);
    Enemy e = new Enemy(10, 0);
    if (enemies.size() < 50 && gOver==false){
      enemies.add(e);
    }
    for(Enemy i: enemies){
      i.display();
      i.chase(person);
      if (close(person.getX(), person.getY(), i.getX(), i.getY())){
        gOver=true;
        deathScream.play();

        //person.clear();
        //noLoop();
      }
    }
    if (gOver==true){
        enemies.clear();
        background(gameOver);
        //clear();
        //gOver=false;
     }
     if (gOver==false){
    person.display();
     }
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
    speed=1;
  }
  float p= (1/((System.nanoTime() -a)/1000000000.0));
  println(p);
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
void mousePressed(){
     if (fired=true){
       file.play();
     }
}

void mouseDragged(){
     gun.move();
     fired=true;
     
     
     Bullet b = new Bullet();
     if (bullets.size()>15){
       bullets.remove(15);
     }
     else{
       bullets.add(b);
       //println(bullets.size());
     }
     
     try{
        for (Bullet i: bullets){
        if (i.getX()<0+200 ||
          i.getX()>width-200||
          i.getY()<0+100||
          i.getY()>height-100){
            file.play();
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
    fired=false;
}
