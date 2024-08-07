import 'package:assignment8/model/json.dart';
import 'users.dart';

List<User> displayByEmial(String email) {

  List<User> users = [];

  for (var element in jsonList) {
    if (element['email'] == email) {
      users.add(User.frommjson(element));
      break;
    }
  }
  return users;
}
