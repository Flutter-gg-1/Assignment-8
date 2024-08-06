class FamilyModel {
  late String _id;
  String firstName;
  String lastName;
  String email;

  ChildrenModel childrenModel;

  FamilyModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required id,
      required this.childrenModel}) {
    _id = id;
  }

  factory FamilyModel.fromJson(Map<String, dynamic> data) {
    return FamilyModel(
        firstName: data["first_name"],
        lastName: data["last_name"],
        email: data["email"],
        id: data["_id"],
        childrenModel: ChildrenModel.fromJson(data["children"]));
  }

  Map<String, dynamic> toJSon() {
    Map<String, dynamic> tempMap = {};

    tempMap["_id"] = _id;

    tempMap["first_name"] = firstName;
    tempMap["last_name"] = lastName;

    tempMap["email"] = email;

    tempMap["children"] = childrenModel.toJSon();

    return tempMap;
  }

  set setId(String id) {
    _id = id;
  }

  get getId {
    return _id;
  }



  
}

class ChildrenModel {
  String firstName;
  String lastName;
  String email;

  ChildrenModel(
      {required this.firstName, required this.lastName, required this.email});

  factory ChildrenModel.fromJson(Map<String, dynamic> data) {
    return ChildrenModel(
        firstName: data["first_name"],
        lastName: data["last_name"],
        email: data["email"]);
  }

  Map<String, dynamic> toJSon() {
    Map<String, dynamic> tempMap = {};

    tempMap["first_name"] = firstName;
    tempMap["last_name"] = lastName;
    tempMap["email"] = email;

    return tempMap;
  }
}
