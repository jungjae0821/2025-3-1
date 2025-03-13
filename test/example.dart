/*void main() {
  String name = 'dart'; // character
  int age = 9;
  bool isStudy = true;
  double years = 2025; // float

  var name2 = 'dart2';
}
-----------------------------------------------------
void main() {
  var name = 'dart';
  dynamic name = 'dart';

  name = 0;

  print(name);
}
-----------------------------------------------------
void main() {
  const API_URL = 'https://api.example.com';

  var now = DateTime.now();

  print(now);

  now = DateTime.now();
}
-----------------------------------------------------
void main() {
  const test = 'https://api.example.com';

  print(test);
}
-----------------------------------------------------
void main() {
  final testClass = ClassExample();

  final myAge = testClass.age();

  print('나의 나이는 ${testClass.age()} 입니다.');

}

class ClassExample {
  int age() {
    return 2025;
  }
}
-----------------------------------------------------
void main() {
  final testClass = ClassExample();

  final myAge = testClass.age();

  print('나의 나이는 $myAge 입니다.');

  final myBirth = testClass.birth(year: 2025, month: 1);

  print(myBirth);
}

class ClassExample {
  int age({int birthYear = 2024}) {
    return 2025 - birthYear;
  }
}
-----------------------------------------------------
void main() {
  final list = [0,1,2,3,4];

  list.forEach((i) {
    print('1번째: $i');
  });

  list.forEach((i) {
    print('2번째: $i');
  });

  List.generate(5, (i) {
    print('3번째: $i');
  });
}
-----------------------------------------------------
 */
void main() {
  try {
    throw Exception('Error');
    print('Try');
  } catch (e) {
    print('Catch');
  } finally {
    print('Finally');
  }
}