
class User {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? child;

  // Default Constructor
  User({this.id, this.firstName, this.lastName, this.email, this.child});

  // Factory Constructor
  factory User.fromjson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      // child: List.from(json['children']).map((element) {
      //   return Children.fromjson(element);
      // }).toList(),
    );
  }

  allUsersTojson() {
    Map<String,dynamic> usersMap = {};
    usersMap["_id"]=id;
    usersMap["first_name"]=firstName;
    usersMap["last_name"]=lastName;
    usersMap["email"]=email;

    return usersMap;  }

  // Function to display one user by first_name as JSON
   Map<String, dynamic>? userByFirstName(String firstName, List<User> users) {
    for (User user in users) {
      if (user.firstName == firstName) {
        return user.tojson();
      }
    }
    return null; // User not found
  }

  // Function to display one user by email as JSON
   Map<String, dynamic>? userByEmail(String email, List<User> users) {
    for (User user in users) {
      if (user.email == email) {
        return user.tojson();
      }
    }
    return null; // User not found
  }

    Map<String, dynamic> tojson() {
    Map<String, dynamic> usersMap = {};
    usersMap['id'] = id;
    usersMap['first_name'] = firstName;
    usersMap['last_name'] = lastName;
    usersMap['email'] = email;
    return usersMap;
  }
}