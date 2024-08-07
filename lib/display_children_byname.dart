import 'package:assignment8/model/json.dart';
import 'users.dart';

List<Children> displayChildrenByEmile(String fatherName) {
  List<User> users = [];
  List<Children> children = [];
  for (var element in jsonList) {
    if (element['first_name'] == fatherName) {
      users.add(User.frommjson(element));
      children.add(Children.fromJson(users.last.children.toJson()));
    }
  }
  return children;
}
