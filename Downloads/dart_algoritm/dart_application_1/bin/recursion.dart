int? ftFactorial(int x) {
  if (x == 1)
    return (1);
  else
    return ( x * ftFactorial(x-1)!);
}

void main(List<String> args) {
  print(ftFactorial(5));
}
