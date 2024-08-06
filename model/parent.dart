import 'child.dart';

class Parent {
  late String parentId;
  late String firstName;
  late String lastName;
  late String parentEmail;
  late Child children;

  Parent(
      {required this.parentId,
      required this.firstName,
      required this.lastName,
      required this.parentEmail,
      required this.children});

  factory Parent.fromJson(Map<String, dynamic> json) {
    return Parent(
        parentId: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        parentEmail: json['email'],
        children: Child.fromJson(json['children']));
  }
  void parentInfo() {
    print("_" * 20);
    print("Parent ID: $parentId");
    print("Parent first name: $firstName");
    print("Parent last name: $lastName");
    print("Parent email: $parentEmail");
    print("Parent children:");
    children.childInfo();
  }
}
