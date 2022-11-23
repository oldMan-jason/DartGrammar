void main(List<String> args) {
  forLoop();
}

/**
 *  Dart for 循环
 */

void forLoop() {
  for (int a = 0; a < 10; a++) {}
}
/**
 *  Dart while 、do while
 */

void whileLoop() {
  int a = 1;
  while (a < 10) {
    a++;
  }

  do {
    a++;
  } while (a > 5);
}


/**
 * Dart 
 * break ： 在switch中，挑出循环；在for循环和while循环中结束当前循环
 * 
 * continue：结束本次循环，不建议使用在while中，容易死循环
 */