import 'users.dart';

//formating printer on console

//console by Name == json Name
void printerByName(List<User> userInfo) {
  for (var element in userInfo) {
    print('\n');
    print('------' * 6);
    print('printing by First name');
    print('------' * 6);
    print(
        'ID: ${element.id}\nName: ${element.firstName} ${element.lastName}\nEmail: ${element.email}\nChildren: ${element.children.firstName} ${element.children.lastName}\n${element.children.email}');
    print('------' * 6);
    print('\n');
  }
}

//console by Email == json Email
void printerByEmail(List<User> userInfo) {
  for (var element in userInfo) {
    print('\n');
    print('------' * 6);
    print('printing by email');
    print('------' * 6);
    print(
        'ID: ${element.id}\nName: ${element.firstName} ${element.lastName}\nEmail: ${element.email}\nChildren: ${element.children.firstName} ${element.children.lastName}\n${element.children.email}');
    print('------' * 6);
    print('\n');
  }
}

//console by Children == json Father Name
void printerChildrenByFatherName(List<Children> childreInfo) {
  for (var element in childreInfo) {
    print('\n');
    print('------' * 6);
    print('printing children by Father Name');
    print('------' * 6);
    print(
        'Name: ${element.firstName} ${element.lastName}\nEmail: ${element.email}');
    print('------' * 6);
    print('\n');
  }
}

//console display all
void printerAllUsers(List<User> userInfo) {
  print('------' * 6);
  print('printing by email');
  for (var element in userInfo) {
    print('------' * 6);
    print(
        'ID: ${element.id} | Name: ${element.firstName} ${element.lastName} | Email: ${element.email} | Children Name: ${element.children.firstName} ${element.children.lastName} | Email Children:${element.children.email}');
    print('------' * 6);
  }
}
