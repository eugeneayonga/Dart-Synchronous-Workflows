void main() {
  sum(30, 20);
  print('The sum of 30 and 20 is ${sum(30, 20)}!');

  showGenerator(10).forEach((element) => print(element));

  showNormal(10).forEach((element) => print(element));
}

// Addition Function --> Returns a single value
int sum(int a, int b) => a + b;

// Iteration Function --> Returns a collection of values
// Iterables are lazy, meaning they only compute values when they are needed.
Iterable<int> showGenerator(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i; // yield is like return, but it doesn't terminate the function
  }
}

// Why not just use a List?
// Because a List is a collection of values that are all computed at once.
List<int> showNormal(int n) {
  final list = <int>[];

  for (var i = 1; i <= n; i++) {
    print('i --> $i');
    list.add(i);
  }
  return list;
}
