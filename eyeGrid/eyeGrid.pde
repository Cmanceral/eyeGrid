
void setup () {
  size(600, 600);
  background(127);
}

void draw () {
  
  int nColumns = 8;
  int nLines = 8;
  float cellWidth = width/nColumns;
  float cellHeight = height/nLines;
  float x = 0;
  float y = cellHeight/2;
  

  for ( int i = 0; i < nColumns; i ++){
    x = cellWidth/2 + (cellWidth * i);
   eye( x , y, cellWidth, cellHeight);
   
    for(int j = 0; j < nLines; j++){ 
     y = cellHeight/2 + (cellHeight * j);
     eye ( x, y, cellWidth, cellHeight);    
    };
  };
};
  
void eye (float eyeX, float eyeY, float eyeWidth, float eyeHeight){ 
  // Cornea
  fill(255);
  noStroke();
  ellipse(eyeX, eyeY, eyeWidth, eyeHeight);

  // Retina
  float retinaX = eyeX + (eyeWidth / 5);
  float retinaY = eyeY;
  float retinaWidth = eyeWidth / 2;
  float retinaHeight = eyeHeight/2;
  fill(0);
  ellipse(retinaX, retinaY, retinaWidth, retinaHeight);

  // Iris
  float irisX = eyeX + (eyeWidth * 0.3);
  float irisY = eyeY - (eyeHeight * 0.1);
  float irisHeight = eyeWidth * 0.1;
  float irisWidth = eyeHeight * 0.1;
  fill(255);
  ellipse(irisX, irisY, irisHeight, irisWidth);
}
