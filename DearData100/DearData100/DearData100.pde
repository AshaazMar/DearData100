Table dataTable;

void setup() {
  size(400, 400);
  dataTable = loadTable("data.csv", "header");
}

void draw() {
  background(255); 
  fill(0);         
  textSize(22);
  textAlign(CENTER, CENTER);
  
  if (dataTable != null) {
    int currentCount = dataTable.getRowCount();
    int remaining = calculateItemsNeeded(100, currentCount);
    
    text("Total Rows Tracked: " + currentCount, width/2, height/2 - 40);
    text("Remaining to 100: " + remaining, width/2, height/2);
    
    fill(200); 
    rect(50, height/2 + 40, 300, 20);
    
    fill(0, 150, 255); 
    float progressWidth = (currentCount / 100.0) * 300; 
    rect(50, height/2 + 40, progressWidth, 20);
    
  } else {
    text("Error: data.csv not found", width/2, height/2);
  }
}

int calculateItemsNeeded(int goal, int currentCount) {
  int needed = goal - currentCount;
  if (needed < 0) {
    return 0;
  }
  return needed;
}
