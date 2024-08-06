import 'model/get_all_data.dart';
import 'model/get_one_data.dart';

void main() {
  List allUsers = [];
  List oneUserByFirstName = [];
  List oneUserByEmail = [];

  allUsers = getAllData();
  oneUserByFirstName = getOneData1("Bonner");
  oneUserByEmail = getOneData2("angeliamcbride@rocklogic.com");

  for (var element in allUsers) {
    print("------------------------All Users---------------------------");
    print("ID :${element.id}");
    print("First Name :${element.firstName}");
    print("Last Name :${element.lastName}");
    print("Email :${element.email}");
    print("Children ${element.children}");
  }
  print("===============================================================");
  for (var element in oneUserByFirstName) {
    print("-----------------One User By First Name--------------------");
    print("ID :${element.id}");
    print("First Name :${element.firstName}");
    print("Last Name :${element.lastName}");
    print("Email :${element.email}");
    print("Children ${element.children}");
  }
  print("===============================================================");

  for (var userEmail in oneUserByEmail) {
    print("----------------One User By Email--------------------------");
    print("ID :${userEmail.id}");
    print("First Name :${userEmail.firstName}");
    print("Last Name :${userEmail.lastName}");
    print("Email :${userEmail.email}");
    print("Children ${userEmail.children}");
  }
}
