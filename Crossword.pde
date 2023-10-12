import java.util.*;

Cell[][] cells;
int cellSize;
int maxChars;
GridController controller;

HashSet<String> strings;
void setup() {
  size(600, 700);
  controller = new GridController();
  maxChars = 13;
  cellSize = width/maxChars;
  drawGrid();
}

void draw() {
}

Cell[][] initCells() {
  return null;
}

void drawGrid() {
  //println(maxChars);
  for (int i = 0; i < maxChars; i++) {
    for (int j = 0; j < maxChars; j++) {
      circle(i * cellSize + (cellSize/2), j * cellSize + (cellSize/2), cellSize);
    }
  }
}
