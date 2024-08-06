import 'package:assignment8_json/models/display_all.dart';
import 'package:assignment8_json/models/user.dart';
import '../services/dataset.dart';

void main(List<String> arguments) {
  print('Assignment 8 : Reading json');
  List<User> users = [];
  for(var data in dataset) {
    User user = User.fromJson(data);
    users.add(user);
  }
  print(displayAll(users));
}