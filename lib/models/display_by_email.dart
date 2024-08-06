import 'package:assignment8_json/models/user.dart'; // user class
import 'package:assignment8_json/dataset.dart';     // dataset

// function to display a user with a specific email
Map<String,dynamic> displayByEmail({required String email}) {
  for(var data in dataset) {
    User user = User.fromJson(data);
    if(user.email == email) {
      return user.toJson();
    }
  }
  return {};
}