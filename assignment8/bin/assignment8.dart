import 'model.dart';
import 'repository_data.dart';

void main() {
  print("\n\n\n\n________________________________All users________________________________\n");
  allUsers();

  print(
      "\n\n\n________________dsplay one user by user's first name________________\n");
  byFirstName(firstName: "Blankenship");

  print("______________________________________\n");
  byFirstName(firstName: "Frederick");


  print(
      "\n\n\n________________dsplay one user by user's email________________\n");
  byEmail(email: "blankenshipvincent@rocklogic.com");
  print("______________________________________________________\n");
  byEmail(email: "frederickstuart@rocklogic.com");

  print(
      "\n\n\n________________dsplay children of one user by user's first name________________\n");
  childrenByFirstName(firstName: "Blankenship");
  print("______________________________________________________\n");
  childrenByFirstName(firstName: "Keisha");
}

//function to display all users incloding all there objects
allUsers() {
  List<Users> list = [];

  //take data from model and store it in list
  for (var element in data) {
    list.add(Users.fromJson(element));
  }
  //print list contents
  for (var element in list) {
    print(element.id);
    print(element.firstName);
    print(element.lastName);
    print(element.email);
    print(element.children);
    print("\n_________________________________________________________________\n");
  }
}

//function to display one user by first_name
byFirstName({required String firstName}) {
  for (var element in data) {
    if (element["first_name"] == firstName) {
      Users user = Users.fromJson(element);
      print(user.id);
      print(user.firstName);
      print(user.lastName);
      print(user.email);
      print(user.children);
    }
  }
}

//function to display one user by email
byEmail({required String email}) {
  for (var element in data) {
    if (element["email"] == email) {
      Users user = Users.fromJson(element);
      print(user.id);
      print(user.firstName);
      print(user.lastName);
      print(user.email);
      print(user.children);
    }
  }
}

//function to display one user by email
childrenByFirstName({required String firstName}) {
  for (var element in data) {
    if (element["first_name"] == firstName) {
      Users user = Users.fromJson(element);
      print(user.children);
    }
  }
}
