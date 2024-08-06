class Child {
  String? firstName;
  String? lastName;
  String? email;
  Child({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    return map;
  }
}
