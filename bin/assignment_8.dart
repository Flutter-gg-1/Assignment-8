import 'dart:convert';
import 'dart:io';
import 'model/user.dart';

Future<void> main() async {
  final file = File('bin/json/user.json');

  // Await to convert to read as json
  final dataFromJson = await file.readAsString();

  // Parse the JSON data
  final List<dynamic> jsonData = jsonDecode(dataFromJson);

  // Create a list of photo objects
  final List<User> dataList =
      jsonData.map((json) => User.fromJson(json)).toList();

  print(dataList.first.id);
}
