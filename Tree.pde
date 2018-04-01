class Tree {
  Node root;

  void addValue(int v) {
    println("added value: " + v);
    Node n = new Node(v);
    if (root == null) {
      root = n;
      root.x = width/2;
      root.y = 50;
      root.level = 1;
    } else {
      root.addNode(n);
    }
  }

  void search(int val) {
    root.search(val);
  }

  void traverse() {
    root.visit();
  }
  
  void show() {
    root.show(root);
  }
}
