import 'package:assignment8_json/models/user.dart';
import '../services/dataset.dart';

void main(List<String> arguments) {
  print('Assignment 8 : Reading json');
  for(var data in dataset) {
    User user = User.fromJson(data);
    print('${user.id} user first name : ${user.firstName}');
  }
}