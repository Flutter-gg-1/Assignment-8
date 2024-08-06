import 'package:assignment8_json/dataset.dart';                       // dataset
import 'package:assignment8_json/models/display_all.dart';            // function to display all users
import 'package:assignment8_json/models/display_by_email.dart';       // function to display a user with a specific email
import 'package:assignment8_json/models/display_by_first_name.dart';  // function to display a user with a specific first name
import 'package:assignment8_json/models/display_children.dart';       // function to display children of a specific first name
import 'package:assignment8_json/models/user.dart';                   // user class
import 'package:assignment8_json/models/children.dart';               // children class

void main(List<String> arguments) {
  print('Assignment 8 : Reading json');
  print("-"*40);
  
  print("Object testing : ");
  User user = User.fromJson(dataset[2]);
  print('user name : ${user.firstName} ${user.lastName}'); // Larson Mcfarland
  Children children = Children.fromJson(user.children);
  print("${user.firstName}'s child is ${children.firstName} ${children.lastName}"); // Betty Gardner
  print("-"*40);
  
  print("Question 3 : ");
  print(displayAll()); // as json
  print("-"*40);

  print("Question 4 : ");
  print(displayByname(firstName: "Keisha")); // as json
  print("-"*40);
  
  print("Question 5 : ");
  print(displayByEmail(email: "alexisanthony@rocklogic.com")); // as json
  print("-"*40);

  print("Bonus Question : ");
  print(displayChildren(firstName: "Keisha")); // as json, Logan Burt
  print("-"*40);
}