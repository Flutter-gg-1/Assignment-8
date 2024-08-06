import 'model.dart';
import '../mydata.dart';

List getOneData1(String firstName) {
  List<Model> oneUser = [];

  for (var element2 in myData) {
    if (element2["first_name"] == firstName) {
      oneUser.add(Model.fromJson(element2));
    }
  }

  return oneUser;
}

List getOneData2(String email) {
  List<Model> oneUser = [];

  for (var element2 in myData) {
    if (element2["email"] == email) {
      oneUser.add(Model.fromJson(element2));
    }
  }

  return oneUser;
}

List getOneData3(String firstName) {
  List<Model> oneUser = [];

  for (var element3 in myData) {
    if (element3["children"]["first_name"] == firstName) {
      oneUser.add(Model.fromJson(element3));
    }
  }

  return oneUser;
}
