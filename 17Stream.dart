/* 异步流生成器 */

Stream<int> countStream() async* {
  for (var i = 0; i < 10; i++) {
    yield i;
  }
}

Future<int> sumCount(Stream<int> stream) async {
  int sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

void main(List<String> args) async {
  var stream = countStream();
  var sum = await sumCount(stream);
  print(sum);
}
