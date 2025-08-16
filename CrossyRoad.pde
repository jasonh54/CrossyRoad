
boolean Wkey, Akey, Skey, Dkey;


PImage frogImage, carRImage, carLImage;
ArrayList<GameObject> allObjects;
Car c;
void setup(){

  size(800,800);

  frogImage = loadImage("/images/frog.png");
  carRImage = loadImage("/images/carR.png");
  carLImage = loadImage("/images/carL.png");
  allObjects = new ArrayList<GameObject>();
  c = new Car();
}

void draw(){
  for(int i = 0; i<allObjects.size(); i++){
    allObjects.get(i).update();
  }
  c.move();
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
