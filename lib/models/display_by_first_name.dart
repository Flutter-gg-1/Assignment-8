import 'package:assignment8_json/models/user.dart';
import 'package:assignment8_json/dataset.dart';

Map<String,dynamic> displayByname(String firstName) {
  for(var data in dataset) {
    User user = User.fromJson(data);
    if(user.firstName == firstName) {
      return user.toJson();
    }
  }
  return {};
}