// b - hight
// a - width

int? myFunc(int a, int b) {
  int res;
  int swap;
  if (b / a == 2) {
    print("res = $a");
    return (a);
  } else {
    swap = b;
    b = a;
    a = swap % b;
    myFunc(a, b);
  }
}

void main(List<String> args) {
  print(myFunc(640, 1680));
}
