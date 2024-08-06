class Child {
  late String firstName;
  late String lastName;
  late String email;

  Child({required this.firstName, required this.lastName, required this.email});

  void parentInfo() {
    print("_" * 20);
    print("child first name: $firstName");
    print("child last name: $lastName");
    print("children email: $email");
  }

  factory Child.fromJson(Map<String, String> json) {
    return Child(
        firstName: json['firts_name']!,
        lastName: json['last_name']!,
        email: json["email"]!);
  }
}
