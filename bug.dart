```dart
import 'dart:async';

Future<void> myFunction() async {
  try {
    // Some code that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Something went wrong!');
  } on TimeoutException catch (e) {
    // This catch block will never be executed
    print('Timeout occurred: $e');
  } catch (e) {
    print('An error occurred: $e');
  }
}

void main() async {
  await myFunction();
}
```