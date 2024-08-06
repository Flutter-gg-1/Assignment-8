import './data.dart';
import '../model/user.dart';

void main(List<String> arguments) {
  for (var i = 0; i < data.length; i++) {
    User.fromJson(data[i]);
  }

  for (var user in User.displayAllUsers()) {
    print(user);
    print('');
  }

  print(User.displayUserByName('Blankenship'));
  print('');
  print(User.displayUserByEmail('marshagillespie@rocklogic.com'));
  print('');
}
