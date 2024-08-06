//Model file to represent users object

//Class User
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

  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {
      "_id": _id,
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "children": children?.toJson()
    };
    return map;
  }
}

//Class Children
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
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
    };
    return map;
  }
}
