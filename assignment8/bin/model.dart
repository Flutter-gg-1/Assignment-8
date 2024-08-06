class Users {
  String id;
  String firstName;
  String lastName;
  String email;
  Map<String, dynamic> children;
  Users(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.children});

  factory Users.fromJson(Map<String, dynamic> jason) {
    return Users(
        id: jason["_id"],
        firstName: jason["first_name"],
        lastName: jason["last_name"],
        email: jason["email"],
        children: jason["children"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["id"] = id;
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["email"] = email;
    map["children"] = children;

    return map;
  }
}
