import 'package:assignment8_json/models/user.dart';
import 'package:assignment8_json/dataset.dart';

Map<String,dynamic> displayByEmail(String email) {
  for(var data in dataset) {
    User user = User.fromJson(data);
    if(user.email == email) {
      return user.toJson();
    }
  }
  return {};
}