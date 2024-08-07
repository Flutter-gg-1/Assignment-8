import 'dart:convert';
import 'models/user.dart';

class UserManager {
  List<User> users;

  UserManager(this.users);

  // Constructor to initialize the UserManager with JSON data.
  factory UserManager.fromJson(String jsonData) {
    //decodes the JSON string into a List of dynamic objects.
    List<dynamic> userJsonList = jsonDecode(jsonData);
    // Convert each dynamic object into a User object and store in the users list
    List<User> userList =
        userJsonList.map((json) => User.fromJson(json)).toList();
    return UserManager(userList);
  }

//This line of code is used to convert a list of User objects into a JSON string representation
  String getAllUsers() {
    return jsonEncode(users.map((user) => user.toJson()).toList());
  }

// Method to get a user by their first name as a JSON string.
  String getUserByFirstName(String firstName) {
    //Searches the users list to find the first User object where the firstName property matches the provided
    User? user = users.firstWhere((user) => user.firstName == firstName);
    //convert the User object to a JSON string using toJson() and jsonEncode().
    return   jsonEncode(user.toJson());
  }

// Method to get a user by their email as a JSON string.
  String getUserByEmail(String email) {
    //Searches the users list to find the first User object where the firstName property matches the provided
    User? user = users.firstWhere((user) => user.email == email);
    //convert the User object to a JSON string using toJson() and jsonEncode().
    return  jsonEncode(user.toJson());
  }

// Method to get the children of a user by the user's first name as a JSON string.
  String getChildrenByFirstName(String firstName) {
    // Find the first user in the list with the matching first name.
    User? user = users.firstWhere((user) => user.firstName == firstName);
    // If a user is found and they have children, convert the children to JSON and return,
    return jsonEncode(user.children!.toJson());
  }
}
