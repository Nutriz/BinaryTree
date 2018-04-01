Tree tree;

void setup() {
  size(600, 600);
  background(0);

  tree = new Tree();

  for (int i=0; i < 20; i++) {
    tree.addValue(int(random(0, 100)));
  }

  tree.traverse();
  tree.search(10);
  
  noLoop();
} //<>//

void draw() {
  tree.show();
}
