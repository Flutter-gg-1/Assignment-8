import '../utils/data.dart';
import '../model/user.dart';
import 'dart:io';

void main(List<String> arguments) {
  for (var i = 0; i < data.length; i++) {
    User.fromJson(data[i]);
  }
  bool isDone = false;
  do {
    print('\n--- Users\' Information ---\n');
    print('Choose one of the following options');
    print('1- Display All Users');
    print('2- Display User by first name');
    print('3- Display User by email');
    print('4- Display Children of User - user\' first name required');
    print('0- Exit');

    stdout.write('\nEnter your choice: ');
    int? choice;
    try {
      choice = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Invalid input!! please Enter a number from the list');
    }

    switch (choice) {
      case 1:
        for (var user in User.displayAllUsers()) {
          print(user);
          print('');
        }
      case 2:
        stdout.write('\nUser\' first name: ');
        String firstName = stdin.readLineSync()!;
        print(User.displayUserByName(firstName));
      case 3:
        stdout.write('\nUser\' email: ');
        String email = stdin.readLineSync()!;
        print(User.displayUserByEmail(email));
      case 4:
        stdout.write('\nEnter User\' first name to display their children: ');
        String firstName = stdin.readLineSync()!;
        print(User.displayChildren(firstName));
      case 0:
        isDone = true;
      default:
        print('Invalid input!! please Enter a number from the list');
    }
  } while (!isDone);
}
