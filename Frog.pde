class Frog extends GameObject{
  private float Speed;
  
  public Frog(){
    super(frogImage, 400,750,50,50);
  }
  
  public move(){
    if(Wkey == true){
      this.y -= 15;
    }
    if(Akey == true){
      this.x -= 15;
    }
    if(Skey == true){
      this.y += 15;
    }
    if(Dkey == true){
      this.x += 15;
    }
    
  }
}
