class Tree {
  Node root;

  void addValue(int v) {
    Node n = new Node(v);
    if (root == null) {
      root = n;
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
}
