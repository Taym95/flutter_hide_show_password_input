# flutter_hide_show_password_input


![ezgif-1-34ddeac7c0dd](https://user-images.githubusercontent.com/14943106/59514778-e0068e80-8ebd-11e9-9ff4-e692baa6552c.gif)

### Installation

Add `flutter_hide_show_password_input` to your `pubspec.yamlfile`.

### Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_hide_show_password_input/flutter_hide_show_password_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Password Input Text'),
          backgroundColor: Colors.black87,
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PasswordInputText(),
        )),
      ),
    );
  }
}
```
