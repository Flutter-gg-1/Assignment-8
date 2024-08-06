class Children {
  String firstName;
  String lastName;
  String email;

  Children(
      {required this.firstName, required this.lastName, required this.email});

  factory Children.fromJson(Map<String, String> json) {
    return Children(
        firstName: json['first_name'] as String,
        lastName: json['last_name'] as String,
        email: json['email'] as String);
  }
}
