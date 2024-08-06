import '../modles/allUsers.dart';
import '../bin/model.dart';

void displayBytheName(String fristName) {
for (var element in data) {
    Users user = Users.fromJson(element);
    if (fristName == user.firstName) {
      print('ID: ${user.id}');
      print('First Name: ${user.firstName}');
      print('Last Name: ${user.lastName}');
      print('Email: ${user.email}');
      print('Children: ${user.child}');
    }
  }
}