class User {
 final String id,firstName,lastName,email;
 final UserChildren children;
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.children,
  });

factory User.fromJson(Map<String,dynamic> json){

  return User(
    id: json['_id'], 
    firstName: json['first_name'], 
    lastName: json['last_name'], 
    email: json['email'], 
    children: UserChildren.fromJson(json['children'])
    );
}

Map<String,dynamic> toJson(){
    Map<String,dynamic> map = {};
    map['_id'] = id;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['children'] = children;

    return map;
}
}

class UserChildren{
  final String firstName,lastName,email;

  UserChildren({
    required this.firstName,
    required this.lastName,
    required this.email
  });

  factory UserChildren.fromJson(Map<String,dynamic> json){
  
  return UserChildren(
    firstName: json['first_name'], 
    lastName: json['last_name'], 
    email: json['email']
    );
  }

  Map<String,dynamic> toJson(){
    Map<String,dynamic> map = {};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;

    return map;
  }
}
