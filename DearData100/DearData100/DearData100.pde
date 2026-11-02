Table dataTable;

void setup() {
  size(400, 400);
  // Load the dataset
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
    
    text("Total Rows Tracked: " + currentCount, width/2, height/2 - 20);
    text("Remaining to 100: " + remaining, width/2, height/2 + 20);
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
