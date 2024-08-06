import 'models/user.dart';
import 'users_data.dart';

List<User> usersList = [];

void main(List<String> arguments) {
  for (var user in usersData) {
    usersList.add(User.fromjson(user));
  }

//display all users.
  //displayAllUsers();

//display one user by first_name.
//displayByFirstname(firstName: "Frederick");

//display one user by email.
  //displayByEmail(email: "blankenshipvincent@rocklogic.com");

//display the children of one user.
  displayChildren(firstName: "Larson");
}

//Function to display all users.
displayAllUsers() {
  for (var user in usersList) {
    print("-------------------------------------");
    print(user.tojson());
  }
}

//function to display one user by first_name.
displayByFirstname({required String firstName}) {
  for (var element in usersList) {
    if (element.firstName == firstName) {
      print("\n------Result of the enterd name $firstName: ------\n");
      print("${element.tojson()}\n");
    }
  }
}

// function to display one user by email.
displayByEmail({required String email}) {
  for (var element in usersList) {
    if (element.email == email) {
      print("\n------Result of the enterd email $email: ------\n");
      print("${element.tojson()} \n");
    }
  }
}

//function to display the children of one user.
displayChildren({required String firstName}) {
  for (var element in usersList) {
    if (element.firstName == firstName) {
      print("\n------Children result of the enterd name $firstName: ------\n");
      print("${element.children?.toJson()}\n");
    }
  }
}
