
boolean Wkey, Akey, Skey, Dkey;


PImage frogImage, carRImage, carLImage, houseImage;
ArrayList<GameObject> allObjects;

Car c;
Spawner s;
Car c2;
Car c3;
Car c4;
Frog frog1;

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
