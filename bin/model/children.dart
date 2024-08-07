class Children {
  String? firstName;
  String? lastName;
  String? email;

  Children({firstName, lastName, email});

  factory Children.fromJson(Map<String, dynamic> json) {
    print("------------3");
    return Children(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"]);
  }
}
