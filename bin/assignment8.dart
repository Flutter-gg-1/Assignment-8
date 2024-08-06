import 'model.dart';
void main() {

  getAllUsers(); // Print all users in JSON format
   print(getUserByFirstName("Angelia")); // Print object matching first name
   print(getUserByEmail("alexisanthony@rocklogic.com")); // Print object matching email
   print(getChildByFirstName("Hammond")); // Print object's children matching first name
}
