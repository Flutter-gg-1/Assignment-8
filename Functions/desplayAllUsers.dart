import '../modles/allUsers.dart';
import '../bin/model.dart';
//function to desplay all users
void displayUserDetails(Users user) {
  for (var i = 0; i < data.length; i++) {
      print('ID: ${user.id}');
  print('First Name: ${user.firstName}');
  print('Last Name: ${user.lastName}');
  print('Email: ${user.email}');
  print('Children:${user.child}');
  }
//function to desplay by the name
  
 
}