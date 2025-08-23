
boolean Wkey, Akey, Skey, Dkey;


PImage frogImage, carRImage, carLImage, houseImage;
ArrayList<GameObject> allObjects;

Car c;
Spawner s;

Frog frog1;

void setup(){
  size(800,800);

  frogImage = loadImage("/images/frog.png");
  carRImage = loadImage("/images/carR.png");
  carLImage = loadImage("/images/carL.png");
  houseImage = loadImage("/images/lily.png");
  allObjects = new ArrayList<GameObject>();

  c = new Car();
  s = new Spawner();
  
  frog1 = new Frog();


}

void draw(){
  background(200);
  
  for(int i = 0; i<allObjects.size(); i++){
    allObjects.get(i).update();
  }
  s.timer();
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
