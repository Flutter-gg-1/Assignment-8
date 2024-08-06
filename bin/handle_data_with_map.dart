
import 'data.dart';
import 'model/user.dart';

void main(List<String> arguments) {

List<User> userinfo = [];

for (var element in Data.userData) {
  userinfo.add(User.fromJson(element));
}
printUser(userinfo);
}
void printUser(List<User> users){
  for (var element in users) {
    print('id : ${element.id}');
    print('Name : ${'${element.firstName} ${element.lastName}'}');
    print('email : ${element.email}');
    //print('Name : ${element.firstName + ' '+element.lastName}');
  }
}