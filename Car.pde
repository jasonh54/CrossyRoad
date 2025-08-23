class Car extends GameObject{
  Car(){
    super(carLImage, 100,400,10,10);
    tag = "car";
  }
  public void move(){
    x+=10;
  }
}
