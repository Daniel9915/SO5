
class States{
  String txt;
  float x = 50;
  float y;

  States (float _x, float _y, String _txt){
    x = _x;
    y = _y;
    txt = _txt;
  }
  
  void display(){
    fill(255);
    textSize(15);
    text(txt , x, y+14);
  }
}
