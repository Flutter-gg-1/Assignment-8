import '../mydata.dart';
import 'model.dart';

List getAllData() {
  List<Model> myUser = [];

  for (var element1 in myData) {
    myUser.add(Model.fromJson(element1));
  }

  return myUser;
}
