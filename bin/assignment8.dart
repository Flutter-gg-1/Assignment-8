
import 'model/users.dart';
import 'data.dart'; 

void main() {
  //list of all User objects
  List<User> users = data.map((json) => User.fromjson(json)).toList();

  //print all users
  for (var user in users) {
    print(user.allUsersTojson());
    print("-----------------");

  //print user info based on name
  print(user.userByFirstName("Blankenship",users));
  //print user info based on email
  print(user.userByEmail("blankenshipvincent@rocklogic.com", users));
  }
}
