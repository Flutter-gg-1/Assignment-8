// class to represent children
class Children {
  // class variables
  final String firstName;
  final String lastName;
  final String email;

  // constructor
  Children({required this.firstName, required this.lastName, required this.email});

  // factory or named constructor used to extract values from json and create an instance of children class
  factory Children.fromJson(Map<String, dynamic> json) {
    return Children(
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email']);
  }

  // method to return object variables as json
  Map<String, dynamic> toJson() {
    return {'first_name': firstName, 'last_name': lastName, 'email': email};
  }
}