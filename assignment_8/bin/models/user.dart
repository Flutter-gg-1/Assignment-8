import '../assignment_8.dart';

class User {
  String? _id;
  String? firstName;
  String? lastName;
  String? email;
  Children? children;

  User({id, this.firstName, this.lastName, this.email, this.children}) {
    _id = id;
  }

  factory User.fromjson(Map<String, dynamic> json) {
    return User(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        children: Children.fromjson(json["children"]));
  }

  tojson() {
    Map<String, dynamic> map = {
      "_id": _id,
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "children": children
    };
    return map;
  }

  displayByFirstname({required String firstName}) {
    for (var element in usersList) {
      if (element.firstName == firstName) {
        print("\n------result of the enterd name $firstName: ------\n");
        print(element.tojson());
      }
    }
  }

  displayByEmail({required String email}) {
    for (var element in usersList) {
      if (element.email == email) {
        print("\n------result of the enterd email $email: ------\n");
        print(element.tojson());
      }
    }
  }
}

class Children {
  String? firstName;
  String? lastName;
  String? email;

  Children(
      {required this.firstName, required this.lastName, required this.email});

  factory Children.fromjson(Map<String, dynamic> json) {
    return Children(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"]);
  }
}
