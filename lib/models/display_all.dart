import 'package:assignment8_json/models/user.dart';

Map<String,dynamic> displayAll(List<User> users) {
  Map<String,dynamic> allUsers = {};
  for(int i=0; i<users.length; i++) {
    String key = (i+1).toString();
    allUsers[key] = users[i].toJson();
  }
  return allUsers;
}