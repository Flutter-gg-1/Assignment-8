import 'models/user.dart';
import 'users_data.dart';

List<User> usersList = [];
void main(List<String> arguments) {
  for (var user in usersData) {
    usersList.add(User.fromjson(user));
  }

  // for (var user in usersList) {
  //   print(user.tojson());
  // }
  User user = User();
  user.displayByFirstname(firstName: "Frederick");

  user.displayByEmail(email: "larsonmcfarland@rocklogic.com");
}
