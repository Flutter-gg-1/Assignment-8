import 'model.dart';
import 'repository_data.dart';

void main() {
  allUsers();
  byFirstName(firstName: "Blankenship");

  byEmail(email: "blankenshipvincent@rocklogic.com");
}

//function to display all users incloding all there objects
allUsers() {
  List<Users> list = [];

  //take data from model and store it in list
  for (var element in data) {
    list.add(Users.fromJson(element));
  }
  print("\n\n\n\n________________________________________\n");
  //print list contents
  for (var element in list) {
    print(element.id);
    print(element.firstName);
    print(element.lastName);
    print(element.email);
    print(element.children);
    print("\n________________________________________\n");
  }
}

//function to display one user by first_name
byFirstName({required String firstName}) {
  List<Users> list = [];
  for (var element in data) {
    if (element["first_name"] == firstName) {
      print(element["_id"]);
      print(element["first_name"]);
      print(element["last_name"]);
      print(element["email"]);
      print(element["children"]);
    }
    return list;
  }
}

//function to display one user by email
byEmail({required String email}) {
  List<Users> list = [];
  for (var element in data) {
    if (element["email"] == email) {
      print(element["_id"]);
      print(element["first_name"]);
      print(element["last_name"]);
      print(element["email"]);
      print(element["children"]);
    }
    return list;
  }
}
