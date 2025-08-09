PImage frogImage, CarImage;
boolean Wkey, Akey, Skey, Dkey;

void setup(){
  size(800,800);
}

void draw(){
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
