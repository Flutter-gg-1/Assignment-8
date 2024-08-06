class Model {
  String id;
  String firstName;
  String lastName;
  String email;
  Map<String, dynamic> children;

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
        children: map["children"]);
  }
}

class Children {
  String firstName;
  String lastName;
  String email;

  Children(
      {required this.firstName, required this.lastName, required this.email});

  factory Children.fromJson(Map<String, String> map) {
    return Children(
        firstName: map["first_name"].toString(),
        lastName: map["last_name"].toString(),
        email: map["email"].toString());
  }
}
