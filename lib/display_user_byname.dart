import 'package:assignment8/model/json.dart';
import 'users.dart';

List<User> displayUserName(String name) {
  List<User> users = [];

  for (var element in jsonList) {
    if (element['first_name'] == name) {
      users.add(User.frommjson(element));
      break;
    }
  }
  return users;
}
