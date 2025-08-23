class House extends GameObject{
  

  
  public House(int x,int y){
    super(houseImage,x,y,50,50);
    tag = "house";
  }
  
  public void update(){
    show();

        if(collisionCheck(this,frog1) == true){
          image(frogImage,this.x-25,this.y-25,50,50);
          
        }
      
  }
  
  
  
  
  
}
