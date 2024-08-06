// class to represent user
class User {
  // class variables
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Map<String, String> children;

  // constructor
  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.children});

  // factory or named constructor used to extract values from json and create an instance of user class
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        children: json['children']);
  }

  // method to return object variables as json
  Map<String,dynamic> toJson() {
    return {
      '_id' : id,
      'first_name' : firstName,
      'last_name' : lastName,
      'email' : email,
      'children' : children
    };
  }
}
