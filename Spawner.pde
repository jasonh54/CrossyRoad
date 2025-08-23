class Spawner {
  Spawner(){
    
  }
  public void timer(){
    int s = 100;
    while(s > 0){
      s-=1;
    }
    if(s == 0){
      c = new Car();
      s = 100;
    }
  }
}
