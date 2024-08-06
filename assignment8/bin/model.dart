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

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        children: json["children"]);
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
