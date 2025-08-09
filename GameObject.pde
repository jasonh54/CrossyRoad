class GameObject{
  float x,y,w,h;
  PImage img;
  public GameObject(PImage img, float x, float y, float w, float h){
    allObjects.add(this);
    this.img = img;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  void show(){
    image(img, x,y,w,h);
  }
  void move(){
  
  }
  void update(){
    move();
    show();
  }
}
