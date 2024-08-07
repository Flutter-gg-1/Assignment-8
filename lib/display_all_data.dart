import 'package:assignment8/model/json.dart';
import 'users.dart';

displayAllData() {
  List<User> users = [];

  for (var element in jsonList) {
    users.add(User.frommjson(element));
  }
  for (var element in users) {
    print(element.toJson());
  }
}
