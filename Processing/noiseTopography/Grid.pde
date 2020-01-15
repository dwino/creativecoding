class Grid {

  float rows;
  float cols;
  float colOffset = width / rows;
  float rowOffset = height / cols;

  Grid(float rows, float cols) {
    this.rows = rows;
    this.cols = cols;
    colOffset = width / rows;
    rowOffset = height / cols;

    this.drawGrid();
  }

  void drawGrid() {
    background(255);
    fill(255);

    float col = colOffset;
    while (col < width) {
      line(col, 0, col, height);
      col += colOffset;
    }

    float row = rowOffset;
    while (row < height) {
      line(0, row, width, row);
      row += rowOffset;
    }
  }

  void fillSquare(float x, float y  ) {
  }
}
