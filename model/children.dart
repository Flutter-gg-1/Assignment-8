import '../utils/color.dart';

class Children {
  String? firstName;
  String? lastName;
  String? email;

  Children(
      {required this.firstName, required this.lastName, required this.email});

  factory Children.fromJson(Map<String, dynamic>? json) {
    return Children(
        firstName: json?['first_name'],
        lastName: json?['last_name'],
        email: json?['email']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;

    return map;
  }

  printChildrenInformation() {
    print(green('First Name: $firstName'));
    print(green('Last Name: $lastName'));
    print(green('Email: $email'));
    print('');
  }
}
