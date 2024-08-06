import 'data.dart';
import 'model.dart';
void main(List<String> arguments) {
   
   List<Users> myData = [];
   for (var element in data) {
    Users user1 = Users.fromJson(element);
    myData.add(user1);
     print("\n ${user1.toJson()}");
     print("______________________________________________");
   }
}
