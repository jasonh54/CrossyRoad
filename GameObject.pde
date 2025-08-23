class GameObject{
  float x,y,w,h;
  PImage img;
  String tag;
  public GameObject(PImage img, float x, float y, float w, float h){
    allObjects.add(this);
    this.img = img;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.tag = "";
  }
  void show(){
    image(img, x-w/2,y-h/2,w,h);
  }
  void move(){
  
  }
  void update(){
    move();
    show();
  }
}
