class Spawner {
  int s = 100;
  int s1 = 100;
  int s2 = 100;
  int s3 = 100;
  Spawner(){
    
  }
  public void timer(){
    

    s-=1;
    s1-=1;
    s2-=1;
    s3-=1;
    if(s == 0){
      
      c = new Car(carRImage,0,600);
      s = (int)(random(100,150));
    }
    if(s1 == 0){
      c2 = new Car(carLImage,800,450);
      
      s1 = (int)(random(100,150));
    }
    if(s2 == 0){
      c3 = new Car(carLImage,800,300);
      s2 = (int)(random(100,150));
    }
    if(s3 == 0){
      c4 = new Car(carRImage,0,150);
      s3 = (int)(random(100,150));
    }
  }
}
