Tree tree;

void setup() {
  size(128, 128);
  background(0);

  tree = new Tree();

  for (int i=0; i < 10; i++) {
    tree.addValue(int(random(0, 100)));
  }

  tree.traverse();
  tree.search(10);
} //<>//