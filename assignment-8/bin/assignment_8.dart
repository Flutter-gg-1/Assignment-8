import 'dart:convert';

import 'all_file.dart';
void main() {

  List<UserModel> userModelList = [];
  // convert json to object
  for (var element in userData) {
    userModelList.add(UserModel.fromJson(element));
  }
  // display ****one user**** by ****first_name****
  for (var element in userModelList) {
    print(element.firstName);
  }
  // display one user by email
  for (var element in userModelList) {
    print(element.email);
  }
  // display all users object in JSON format
  for (var element in userModelList) {
    print(element.toJson());
  }
  
}
