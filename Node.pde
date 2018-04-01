class Node {

  int value;
  Node left;
  Node right;
  int x;
  int y;
  int level;

  Node(int value) {
    this.value = value;
  }

  void addNode(Node n) {
    if (n.value < value) {
      if (left == null) {
        left = n;
        left.level = level + 1;
        left.x = x - (200/left.level);
        left.y = y + 50;
      } else {
        left.addNode(n);
      }
    } else if (n.value > value) {
      if (right == null) {
        right = n;
        right.level = level + 1;
        right.x = x + (200/right.level);
        right.y = y + 50;
      } else {
        right.addNode(n);
      }
    }
  }

  void visit() {
    if (left != null) {
      left.visit();
    }
    //println("val: " + value);
    if (right != null) {
      right.visit();
    }
  }

  void search(int val) {
    if (val == value) {
      println("Found");
    } else if (val < value && left != null) {
      left.search(val);
    } else if (val > value) {
      if (val == value) {
        println("found");
      } else if (val < value && right != null) {
        right.search(val);
      }
    }
  }

  void show(Node parent) {
    if (left != null) {
      left.show(this);
    }

    drawText();
    drawCircle();
    drawLine(parent);

    if (right != null) {
      right.show(this);
    }
  }

  void drawText() {
    fill(255);
    noStroke();
    textAlign(CENTER);
    text(value, x, y);
  }

  void drawCircle() {
    noFill();
    stroke(255);
    ellipse(x, y, 30, 30);
  }
  
  void drawLine(Node parent) {
    noFill();
    stroke(255);
    line(parent.x, parent.y+15, x, y-15);
  }
}
