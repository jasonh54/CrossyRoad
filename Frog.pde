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
    
    for(int i=0;i<allObjects.size();i++){
      if(allObjects.get(i).tag == "car" && collisionCheck(this,allObjects.get(i)) == true){
         lives-=1;
         this.x = 400;
         this.y = 750;
         if(lives == 0){
           noLoop();
         }
      }
    }
      
    
    
  }
}
