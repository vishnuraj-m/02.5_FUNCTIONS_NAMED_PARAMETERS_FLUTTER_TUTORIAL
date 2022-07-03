void main() {
  sum();
  print('after future');
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print('In Sum Future: ${a + b}');
  return a + b;
}

Future<void> sum() async {
  await sumFuture(5, 6);
  print('In just Sum');
}
