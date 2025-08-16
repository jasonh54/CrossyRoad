class Frog extends GameObject{

  
  public Frog(){
    super(frogImage, 400,750,50,50);
  }
  
  public void move(){
    if(Wkey == true){
      this.y -= 1;
    }
    if(Akey == true){
      this.x -= 1;
    }
    if(Skey == true){
      this.y += 1;
    }
    if(Dkey == true){
      this.x += 1;
    }
    
  }
}
