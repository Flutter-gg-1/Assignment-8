import 'child.dart';

class Parent {
  late String parentId;
  late String firstName;
  late String lastName;
  late String parentEmail;
  late List<Child> children;

  Parent(
      {required this.parentId,
      required this.firstName,
      required this.lastName,
      required this.parentEmail,
      required this.children});

  void parentInfo() {
    print("_" * 20);
    print("Parent ID: $parentId");
    print("Parent first name: $firstName");
    print("Parent last name: $lastName");
    print("Parent email: $parentEmail");
    print("Parent children:");
    print(children);
  }
}
