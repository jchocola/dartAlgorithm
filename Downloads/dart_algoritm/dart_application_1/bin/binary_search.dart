// Бинарный поиск

int? binary_search(List<int> myList, int item) {
  int low = 0;
  int hight = myList.length - 1;

  int mid = ((low + hight) / 2).floor();

  while (low <= hight) {
    if (mid == item) {
      return (mid);
    }
    else if (mid < item) {
      low = mid + 1;
      mid = ((low + hight) / 2).floor();
    }
     else if (mid > item) {
      hight = mid - 1;
      mid = ((low + hight) / 2).floor();
    }
  }
  return null;
}

void main() {
  List<int> OurList = [];
  for (int i = 1; i <= 100000000; i++) {
    OurList.add(i);
  }
  //print(binary_search(OurList, 9099999));
  print(stupidSearch(OurList, 9099999));
}

int? stupidSearch(List<int> list, int items) {
  for (int i = 0; i <= 100000000; i++) {
    if (list[i] == items) {
      return (i);
    }
  }
  return null;
}
