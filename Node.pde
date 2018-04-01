class Node {

  int value = -1;
  Node left;
  Node right;

  Node(int value) {
    this.value = value;
  }

  void addNode(Node n) {
    if (n.value < value) {
      if (left == null) {
        left = n;
      } else {
        left.addNode(n);
      }
    } else if (n.value > value) {
      if (right == null) {
        right = n;
      } else {
        right.addNode(n);
      }
    }
  }

  void visit() {
    if (left != null) {
      left.visit();
    }
    println("val: " + value);
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
}
