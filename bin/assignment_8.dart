import '../utils/data.dart';
import '../model/user.dart';
import 'dart:io';
import 'package:ansicolor/ansicolor.dart';

AnsiPen color = AnsiPen()..rgb(r: 1, g: 0.576, b: 0);
AnsiPen cyan = AnsiPen()..cyan(bold: true);
AnsiPen green = AnsiPen()..green(bold: true);
AnsiPen yellow = AnsiPen()..yellow(bold: true);
AnsiPen blue = AnsiPen()..blue(bold: true);
AnsiPen red = AnsiPen()..red(bold: true);

void main(List<String> arguments) {
  for (var i = 0; i < data.length; i++) {
    User.fromJson(data[i]);
  }
  bool isDone = false;
  do {
    print(color('\n--- Users\' Information ---\n'));
    print(color('Choose one of the following options'));
    print(yellow('1- Display All Users'));
    print(yellow('2- Display User by first name'));
    print(yellow('3- Display User by email'));
    print(yellow('4- Display Children of User - user\' first name required'));
    print(yellow('0- Exit'));

    stdout.write(cyan('\nEnter your choice: '));
    int? choice;
    try {
      choice = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print(red('Invalid input!! please Enter a number from the list'));
    }

    switch (choice) {
      case 1:
        User.displayAllUsers();
      case 2:
        stdout.write(cyan('\nUser\' first name: '));
        String firstName = stdin.readLineSync()!;
        User.displayUserByName(firstName);
      case 3:
        stdout.write('\nUser\' email: ');
        String email = stdin.readLineSync()!;
        User.displayUserByEmail(email);
      case 4:
        stdout.write('\nEnter User\' first name to display their children: ');
        String firstName = stdin.readLineSync()!;
        User.displayChildren(firstName);
      case 0:
        isDone = true;
      default:
        print('Invalid input!! please Enter a number from the list');
    }
  } while (!isDone);
}
