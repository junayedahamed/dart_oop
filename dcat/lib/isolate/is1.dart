import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

final String filename = "example_1.json";

Future<Map<String, dynamic>> _readAndParseJson() async {
  final fileData = await File(filename).readAsString();
  final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
  return jsonData;
}

void main() async {
  final jsonData = Isolate.run(_readAndParseJson);
  print('Number of JSON keys: $jsonData');
}
