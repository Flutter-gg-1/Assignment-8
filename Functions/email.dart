import '../modles/allUsers.dart';
import '../bin/model.dart';
//desplay objects by email
void displayByEmail(String email) {
  for (var element in data) {
    Users user = Users.fromJson(element);
    if (email == user.email) {
      print('ID: ${user.id}');
      print('First Name: ${user.firstName}');
      print('Last Name: ${user.lastName}');
      print('Email: ${user.email}');
      print('Children:');
      print('First Name: ${user.child['first_name']}');
      print('Last Name: ${user.child['last_name']}');
      print('Email: ${user.child['email']}');
    }
  }
}