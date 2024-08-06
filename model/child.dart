class Child {
  late String firstName;
  late String lastName;
  late String email;

  Child({required this.firstName, required this.lastName, required this.email});

  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json["email"]);
  }
  void childInfo() {
    print("* " * 14);
    print("child first name: $firstName");
    print("child last name: $lastName");
    print("children email: $email");
  }
}
