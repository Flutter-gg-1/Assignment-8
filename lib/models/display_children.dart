import 'package:assignment8_json/dataset.dart';         // dataset
import 'package:assignment8_json/models/user.dart';     // user class
import 'package:assignment8_json/models/children.dart'; // children class

// function to display children of a specific first name
Map<String,dynamic> displayChildren({required String firstName}) {
  for(var data in dataset) {
    User user = User.fromJson(data);
    if(user.firstName == firstName) {
      Children children = Children.fromJson(user.children);
      return children.toJson();
    }
  }
  return {};
}