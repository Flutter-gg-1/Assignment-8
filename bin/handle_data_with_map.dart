
import 'data.dart';
import 'model/user.dart';
import 'model/user_displayer.dart';

void main(List<String> arguments) {
  List<User> userinfo = [];

for (var element in Data.userData) {
  userinfo.add(User.fromJson(element));
}
UserDisplayer.printAllUser(userinfo);
UserDisplayer.printUserByFirstName('Marsha', userinfo);
UserDisplayer.printUserByEmail('marshagillespie@rocklogic.com', userinfo);
UserDisplayer.printUserChildren('Marsha', userinfo);
}