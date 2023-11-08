List<int> myList = [
  0,
  3,
  -4,
  3,
  -6,
  11,
  -7,
  -32,
  -5,
  0,
  34,
  55,
  24,
  1,
  6,
  4,
  6,
  4,
  6,
  0,
  4,
  6,
  8,
  10,
  43,
  21,
  7,
  4,
  12,
  30,
  43,
  54,
  33,
  22,
  13,
];

List<int> demo = [3, 5, 2, 1, 4];

int? ftSum(List<int> arr) {
  List<int> newArr;
  if (arr.isEmpty) {
    return (0);
  } else {
    newArr = arr.sublist(1, arr.length);
    return (arr[0] + ftSum(newArr)!);
  }
}

void main(List<String> args) {
  print(myList);
  List sortList = qsort(myList);
  print(sortList);
}

List<int> qsort(List<int> array) {
  if (array.length < 2) {
    List<int> baseList = array;
    return (baseList);
  } else {
    int pivot = array[0];
    List<int> pi = [pivot];
    List<int> smaller = [];
    List<int> greater = [];
    for (int i = 1; i < array.length; i++) {
      if (array[i] <= pivot) smaller.add(array[i]);
      if (array[i] > pivot) greater.add(array[i]);
    }
    return (qsort(smaller) + pi + qsort(greater));
  }
}
