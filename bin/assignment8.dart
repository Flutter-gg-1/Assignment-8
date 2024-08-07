// import 'package:assignment8/users.dart';
// import 'package:assignment8/model/json.dart';
import 'package:assignment8/users.dart';
import 'package:assignment8/display_all_data.dart';
import 'package:assignment8/display_user_byname.dart';
import 'package:assignment8/display_by_email.dart';

void main() {
  List<User> users = [];

  //display all
  users = displayAllData();
  for (var element in users) {
    print('-----------------------------' * 5);
    print(element.toJson());
    print('-----------------------------' * 5);
  }
  //display by a specific name
  users = displayUserName('Bonner');
  for (var element in users) {
    print('\n\n\n\n\n\n\n\n');
    print('printing by First name');
    print(element.toJson());
    print('\n');
  }
  //display by a specific email
  users = displayByEmial('angeliamcbride@rocklogic.com');
  for (var element in users) {
    print('\n\n\n\n\n\n\n\n');
    print('printing by email');
    print(element.toJson());
    print('\n');
  }
}
