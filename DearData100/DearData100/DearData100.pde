Table dataTable;

void setup() {
  size(400, 400);
  background(255);
  
  dataTable = loadTable("data.csv", "header");
  
  if (dataTable != null) {
    println("Rows loaded: " + dataTable.getRowCount());
  } else {
    println("Error: 'data.csv' not found in data folder");
  }
  
  int targetCount = 100;
  int currentCount = (dataTable != null) ? dataTable.getRowCount() : 42;
  int remaining = calculateItemsNeeded(targetCount, currentCount);
  
  println("Current data count: " + currentCount);
  println("Needed for 100: " + remaining);
}

void draw() {
}

int calculateItemsNeeded(int goal, int currentCount) {
  int needed = goal - currentCount;
  if (needed < 0) {
    return 0;
  }
  return needed;
}
