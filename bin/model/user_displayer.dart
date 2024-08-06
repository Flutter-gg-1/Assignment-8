import 'user.dart';

class UserDisplayer {

static void printAllUser(List<User> users){
  for (var element in users) {
    print('=============User Info===============');
    print('id : ${element.id}');
    print('first name : ${element.firstName}');
    print('last name : ${element.lastName}');
    print('email : ${element.email}');
    print('Children :\n first name : ${element.children.firstName}\n last name :  ${element.children.lastName}\n email : ${element.children.email}');
    print('======================================');
  }
}

static void printUserByFirstName(String firstName,List<User> users){
  for (var element in users) {
    if (element.firstName==firstName) {
         print('=============User Info===============');
    print('id : ${element.id}');
    print('first name : ${element.firstName}');
    print('last name : ${element.lastName}');
    print('email : ${element.email}');
    print('Children :\n first name : ${element.children.firstName}\n last name :  ${element.children.lastName}\n email : ${element.children.email}');
    print('======================================');
    }
  }
}
static void printUserByEmail(String email,List<User> users){
  for (var element in users) {
    if (element.email==email) {
         print('=============User Info===============');
    print('id : ${element.id}');
    print('first name : ${element.firstName}');
    print('last name : ${element.lastName}');
    print('email : ${element.email}');
    print('Children :\n first name : ${element.children.firstName}\n last name :  ${element.children.lastName}\n email : ${element.children.email}');
    print('======================================');
    }
  }
}
static void printUserChildren(String firstName,List<User> users){
  for (var element in users) {
    if (element.firstName==firstName) {
    print('========User $firstName children======');
    print('Children :\n first name : ${element.children.firstName}\n last name :  ${element.children.lastName}\n email : ${element.children.email}');
    print('======================================');
    }
  }
}
}