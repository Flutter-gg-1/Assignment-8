import 'package:assignment8_json/models/user.dart'; // user class
import 'package:assignment8_json/dataset.dart';     // dataset

// function to display all users
Map<String,dynamic> displayAll() {
  // initialize the json to be returned
  Map<String,dynamic> allUsers = {};
  for(int i=0; i<dataset.length; i++) {
    // get user data as an object
    User user = User.fromJson(dataset[i]);
    // generate a key that increments with each user data
    String key = (i+1).toString();
    // finally, add key and user data as json to the json to be returned
    allUsers[key] = user.toJson();
  }
  return allUsers;
}