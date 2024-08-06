class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  Map<String, dynamic>? children;

  UserModel({required this.id, required this.firstName, required this.lastName, required this.email, required this.children});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      children: json['children'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    data['_id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['children'] = children;
    return data;
  }
}
