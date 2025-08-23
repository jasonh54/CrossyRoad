class Spawner {
  int s = 100;
  Spawner(){
    
  }
  public void timer(){
    

    s-=1;
    
    if(s == 0){
      c = new Car();
      s = 100;
    }
  }
}
