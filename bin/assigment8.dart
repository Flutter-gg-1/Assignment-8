import '../modles/allUsers.dart';
import 'model.dart';
import '../Functions/desplayAllUsers.dart';
import '../Functions/first_name.dart';
import '../Functions/email.dart';

void main() {
  Users user = Users.fromJson(data[1]);

  displayUserDetails(user); //allusers
  displayBytheName("Larson"); //function to desplay by the name
  displayByEmail("blankenshipvincent@rocklogic.com"); //desplay objects by email
}
