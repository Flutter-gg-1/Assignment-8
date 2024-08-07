import 'package:assignment8/model/json.dart';
import 'users.dart';

List<User> displayAllData() {
  List<User> users = [];

  for (var element in jsonList) {
    users.add(User.frommjson(element));
  }

  return users;
}
