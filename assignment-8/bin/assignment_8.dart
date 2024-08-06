import '../lib/services/user_service.dart';
import '../lib/helpers/color_print.dart';

void main() {
  //Create an instance of UserService
  UserService service = UserService();
  //Print all users
  printInfo('All Users:');
  printSuccess(service.displayUsers());

  //Print user with first name "Blankenship"
  printInfo('\nUser with first name "Blankenship":');
  printSuccess(service.displayUserFirstName('Blankenship'));

  //Print user with email
  printInfo('\nUser with email "blankenshipvincent@rocklogic.com":');
  printSuccess(service.displayByEmail('blankenshipvincent@rocklogic.com'));

  //Print children of user with first name "Blankenship"
  printInfo('\nChildren of user with first name "Blankenship":');
  printSuccess(service.displayChildrenUserFirstName('Blankenship'));
}
