// import 'package:assignment8/users.dart';
// import 'package:assignment8/model/json.dart';
import 'package:assignment8/users.dart';
import 'package:assignment8/display_all_data.dart';
import 'package:assignment8/display_user_byname.dart';
import 'package:assignment8/display_by_email.dart';
import 'package:assignment8/display_children_byname.dart';
import 'package:assignment8/printer_show.dart'; //function to display on console

void main() {
  //List to set the result data
  List<User> users = [];
  List<Children> children = [];
  //display all
  users = displayAllData();
  printerAllUsers(users);
  //display by a specific name
  users = displayUserName('Bonner'); //first name
  printerByName(users);

  //display by a specific email
  users = displayByEmial('angeliamcbride@rocklogic.com'); //email
  printerByEmail(users);

  //display children by a specific father name
  children = displayChildrenByEmile('Bonner'); //father name
  printerChildrenByFatherName(children);
}
