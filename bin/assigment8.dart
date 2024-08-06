import '../modles/allUsers.dart';
import 'model.dart';
import '../Functions/desplayAllUsers.dart';

void main() {
  Users user = Users.fromJson(data[1]);
  print(user.child);
  displayUserDetails(user);
}



