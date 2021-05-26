Table table;
Numbers[] numbers = new Numbers[55];
States[] states = new States[55];


void setup(){
  
  fullScreen();
  table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
}

void draw(){
  
  clear();
  getData();
  
  for(States c: states){
    c.display();
  }
  for(Numbers c: numbers){
    c.display();
  }
}


void getData(){
  int yLevel = 5;
  int numb = 0;
  
  mouseWheel();
  
  for(TableRow row : table.rows()){
    String stateName = row.getString("state");
    int cases = row.getInt("cases");
    int deaths = row.getInt("deaths");

    states[numb] = new States(10,yLevel,stateName);
    numbers[numb] = new Numbers(yLevel, cases, deaths);

    yLevel+= 25;
    numb++;
  }
}
