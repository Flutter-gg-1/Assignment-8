import 'package:assignment8_json/models/display_all.dart';
import 'package:assignment8_json/models/display_by_email.dart';
import 'package:assignment8_json/models/display_by_first_name.dart';
import 'package:assignment8_json/models/display_children.dart';
import 'package:assignment8_json/models/user.dart';
import 'package:assignment8_json/dataset.dart';

void main(List<String> arguments) {
  print('Assignment 8 : Reading json');
  List<User> users = [];
  for(var data in dataset) {
    User user = User.fromJson(data);
    users.add(user);
  }
  print(displayAll(users));
  print("-"*40);
  print(displayByname("Keisha"));
  print("-"*40);
  print(displayByEmail("alexisanthony@rocklogic.com"));
  print("-"*40);
  print(displayChildren("Keisha"));
}