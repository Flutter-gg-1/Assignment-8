import 'package:assignment8_json/dataset.dart';
import 'package:assignment8_json/models/children.dart';
import 'package:assignment8_json/models/user.dart';

Map<String,dynamic> displayChildren(String firstName) {
  for(var data in dataset) {
    User user = User.fromJson(data);
    if(user.firstName == firstName) {
      Children children = Children.fromJson(user.children);
      return children.toJson();
    }
  }
  return {};
}