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

   print('\ndisplay the user with first name "Frederick":\n');
   Users.displayByName('Frederick');
   print("______________________________________________");
   print('\ndisplay the user with first name "ahmed":\n');
   Users.displayByName('ahmed');
   
   print('\ndisplay the user with email "josephineconrad@rocklogic.com":\n');
   Users.displayByEmail('josephineconrad@rocklogic.com');
   print("______________________________________________");
   print('\ndisplay the user with email "aaa@gmail.com":\n');
   Users.displayByName('aaa@gmail.com');

   print('\ndisplay the user with children first name "Hammond":\n');
   Users.displayChildren('Hammond');
   print("______________________________________________");
   print('\ndisplay the user with children first name "jjj":\n');
   Users.displayChildren('jjj');
}
