import 'home.dart';

void main() {
  var home = Home();
  // All People
  home.showAllPeople();

  // Single Person
  /// By name:
  List<String> nameArr = ['Blankenship', 'Reed', 'Mozart'];
  for (var name in nameArr) {
    home.showSingleUser(criteria: SearchCriteria.name, str: name);
  }
  // By email
  List<String> emailArr = [
    'blankenshipvincent@rocklogic.com',
    'abc@a.com',
    'leachmoran@rocklogic.com'
  ];
  for (var email in emailArr) {
    home.showSingleUser(criteria: SearchCriteria.email, str: email);
  }
}
