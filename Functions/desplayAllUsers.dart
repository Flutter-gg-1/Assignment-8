import '../modles/allUsers.dart';
import '../bin/model.dart';

//function to desplay all users
void displayUserDetails(Users user) {
  for (var i = 0; i < data.length; i++) {
      print('ID: ${user.id}');
  print('First Name: ${user.firstName}');
  print('Last Name: ${user.lastName}');
  print('Email: ${user.email}');
  print('Children : \n first_name ${user.child['first_name'] } \n lastname: ${user.child['last_name']} \n email:${user.child['email']}');
  }
//function to desplay by the name
  
 
}