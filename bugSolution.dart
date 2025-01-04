```dart
import 'dart:async';

Future<void> myFunction() async {
  try {
    // Some code that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Something went wrong!');
  } on TimeoutException catch (e) {
    print('Timeout occurred: $e');
  } on Exception catch (e) {
    print('Another error occurred: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

void main() async {
  await myFunction();
}
```