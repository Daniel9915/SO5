class Numbers {
  float x = 300;
  float y;
  float h = 10;
  int cases;
  int deaths;
  int divided = 2700;

  Numbers(float _y, int _cases, int _deaths) {
    y = _y;
    cases = _cases;
    deaths = _deaths;
  }

  void display() {
    //Cases
    push();
      textAlign(RIGHT);
      fill(255);
      textSize(12);
      text(cases + " cases", x-10, y+10);
      fill(100,100,255);

      if(cases/divided < 4){
        rect(x,y,2,h);
      }else{
        rect(x, y, cases/divided, h);
      }
      //Deaths
      fill(255);
      text(deaths + " deaths", x-10, y-4);
      fill(255,0,0);
      
      if(deaths/divided <= 2){
        rect(x, y+10, 2, h);
      }else{
        rect(x, y+10, deaths/divided, h);
      }
    pop();
  }
}
