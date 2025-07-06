import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  try {
    final dir = Directory.current.path;
    //  WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter(dir);

    var box = await Hive.openBox<String>('myBox');

    await box.put('name', 'David');

    var name = box.get('name');

    print('Name: $name');
  } catch (e) {
    print(e);
  }
}
