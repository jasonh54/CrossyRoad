PImage frogImage, carRImage, carLImage;
ArrayList<GameObject> allObjects;
void setup(){

  size(800,800);

  frogImage = loadImage("/images/frog.png");
  carRImage = loadImage("/images/carR.png");
  carLImage = loadImage("/images/carL.png");
  allObjects = new ArrayList<GameObject>();

}

void draw(){
  for(int i = 0; i<allObjects.size(); i++){
    allObjects.get(i).update();
  }
}
