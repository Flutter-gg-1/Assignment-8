import 'Models/user.dart';
import 'data_set.dart';

void main() {
  getAllUsers();
  getByFirstName("Blankenship");
  getByEmail('larsonmcfarland@rocklogic.com');
}

getAllUsers() {
  List<User> users = createUsersList();

  print("\n\n\n---------get all users---------");
  for (var user in users) {
    print("------------------");
    print(user.toJson());
  }
  print("------------------");
}

getByFirstName(String firstName) {
  List<User> users = createUsersList();

  print("\n\n\n---------get by first name---------");
  for (var user in users) {
    if (user.firstName == firstName) {
      print("------------------");
      print(user.toJson());
      print("------------------");
      return;
    }
  }
  print("user is not found");
}

getByEmail(String email) {
  List<User> users = createUsersList();

  print("\n\n\n---------get by email---------");
  for (var user in users) {
    if (user.email == email) {
      print("------------------");
      print(user.toJson());
      print("------------------");
      return;
    }
  }
  print("user is not found");
}

createUsersList() {
  List<User> users = [];
  for (var user in usersData) {
    users.add(User.fromJson(user));
  }
  return users;
}
