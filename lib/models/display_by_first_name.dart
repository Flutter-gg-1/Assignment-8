import 'package:assignment8_json/models/user.dart'; // user class
import 'package:assignment8_json/dataset.dart';     // dataset

// function to display a user with a specific first name
Map<String,dynamic> displayByname({required String firstName}) {
  for(var data in dataset) {
    User user = User.fromJson(data);
    if(user.firstName == firstName) {
      return user.toJson();
    }
  }
  return {};
}