import 'dart:io';

import '../model/parent.dart';

void interface(List<Parent> parents) {
  late String userInput;
  print("Note: if the input does not match with the option, it will ask again");
  do {
    print("\n");
    print('* ' * 20);
    print(
        "1- display all data | 2-search by name | 3-search by email | 0-exit");
    print("4-search parent by child first name");
    print('* ' * 20);

    try {
      userInput = stdin.readLineSync()!;
    } catch (e) {
      print("there an error in select the option");
    }
    switch (userInput) {
      case == "1":
        printParentsList(parents);
        break;
      case == "2":
        searchParentByName(parents);
        break;

      case == "3":
        searchParentByEmail(parents);
        break;

      case == "4":
        searchParentByChild(parents);
        break;
      default:
        print("miss match input make sure to select one the these option");
    }
  } while (userInput != "0");
  print("Bay");
}

void printParentsList(List<Parent> parents) {
  for (var parent in parents) {
    parent.parentInfo();
  }
}

void searchParentByName(List<Parent> parents) {
  late String firstName;
  bool found = false;
  try {
    print("input the first name of parent not case sensitive");
    firstName = stdin.readLineSync()!;
  } catch (e) {
    print("there an error when input first parent name");
  }
  for (var parent in parents) {
    if (parent.firstName.toLowerCase() == firstName.trim().toLowerCase()) {
      print("the parent was found:");
      parent.parentInfo();
      found = true;
    }
  }

  if (found == false) {
    print("there no parent by that name");
  }
}

void searchParentByEmail(List<Parent> parents) {
  late String email;
  bool found = false;
  try {
    print("input the parent email not case sensitive");
    email = stdin.readLineSync()!;
  } catch (e) {
    print("there an error when input email");
  }
  for (var parent in parents) {
    if (parent.parentEmail.toLowerCase() == email.trim().toLowerCase()) {
      print("the parent was found:\n");
      parent.parentInfo();
      found = true;
    }
  }

  if (found == false) {
    print("there no parent by that email");
  }
}

void searchParentByChild(List<Parent> parents) {
  late String childName;
  bool found = false;
  try {
    print("input the first name of the child of parent not case sensitive");
    childName = stdin.readLineSync()!;
  } catch (e) {
    print("there an error when input first parent name");
  }
  for (var parent in parents) {
    if (parent.children.firstName.toLowerCase() ==
        childName.trim().toLowerCase()) {
      print("the parent was found:\n");
      parent.parentInfo();
      found = true;
    }
  }

  if (found == false) {
    print("there no parent has this child");
  }
}
