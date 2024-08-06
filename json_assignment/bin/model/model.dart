class Model {
  String id;
  String firstName;
  String lastName;
  String email;
  Children children;

  Model(
      {required this.id,
      required this.children,
      required this.email,
      required this.firstName,
      required this.lastName});

  factory Model.fromJson(Map<String, dynamic> map) {
    return Model(
        id: map["_id"],
        email: map["email"],
        firstName: map["first_name"],
        lastName: map["last_name"],
        children: Children.fromJson(map["children"]));
  }
  Map<String, dynamic> toJson() => {
        '_id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'children': children,
      };
}

class Children {
  String firstName;
  String lastName;
  String email;

  Children(
      {required this.firstName, required this.lastName, required this.email});

  factory Children.fromJson(Map<String, dynamic> map) {
    return Children(
        firstName: map["first_name"].toString(),
        lastName: map["last_name"].toString(),
        email: map["email"].toString());
  }
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
      };
}
