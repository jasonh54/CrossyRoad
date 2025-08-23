class Car extends GameObject{
  Car(PImage img, int x, int y){
    super(img, x,y,50,50);
  }
  public void move(int d){
    x+=d;
  }
}
