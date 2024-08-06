import '../modles/allUsers.dart';
import 'model.dart';
import '../Functions/desplayAllUsers.dart';
import '../Functions/first_name.dart';

void main() {
  Users user = Users.fromJson(data[1]);
  
  //displayUserDetails(user);
  displayBytheName("Larson");
}
