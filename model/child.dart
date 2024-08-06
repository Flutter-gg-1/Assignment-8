class Child {
  late String firstName;
  late String lastName;
  late String email;

  Child({required this.firstName, required this.lastName, required this.email});

  void parentInfo() {
    print("_" * 20);
    print("Parent first name: $firstName");
    print("Parent last name: $lastName");
    print("Parent email: $email");
    print("Parent children:");
  }
}
