
boolean Wkey, Akey, Skey, Dkey;


PImage frogImage, carRImage, carLImage, houseImage;
ArrayList<GameObject> allObjects;

Car c;
Spawner s;
Car c2;
Car c3;
Car c4;
Frog frog1;

House house1;
House house2;
House house3;
House house4;

void setup(){
  size(800,800);

  frogImage = loadImage("/images/frog.png");
  carRImage = loadImage("/images/carR.png");
  carLImage = loadImage("/images/carL.png");
  houseImage = loadImage("/images/lily.png");
  allObjects = new ArrayList<GameObject>();
  
  c = new Car(carRImage,0,400);
  c2 = new Car(carLImage,800,500);
  c3 = new Car(carLImage,800,300);
  c4 = new Car(carRImage,0,200);
  s = new Spawner();
  
  frog1 = new Frog();
  
  house1 = new House(50,75);
  house2 = new House(275,75);
  house3 = new House(475,75);
  house4 = new House(700,75);


}

void draw(){
  background(200);
  
  for(int i = 0; i<allObjects.size(); i++){
    allObjects.get(i).update();
  }
  s.timer();
  c.move(10);
  c2.move(-10);
  c3.move(-10);
  c4.move(10);
}

public void keyPressed(){
  if(keyCode == 87){
    Wkey = true;
  }
  if(keyCode == 65){
    Akey = true;
  }
  if(keyCode == 83){
    Skey = true;
  }
  if(keyCode == 68){
    Dkey = true;
  }
}

public void keyReleased(){
  if(keyCode == 87){
    Wkey = false;
  }
  if(keyCode == 65){
    Akey = false;
  }
  if(keyCode == 83){
    Skey = false;
  }
  if(keyCode == 68){
    Dkey = false;
  }
}

public boolean collisionCheck(GameObject o1, GameObject o2){
  if(abs(o1.x-o2.x) < (o1.w + o2.w)/2  && abs(o1.y-o2.y) < (o1.h + o2.h)/2 ){
    return true;
  }
  return false;
}
