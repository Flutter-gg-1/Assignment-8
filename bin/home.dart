import 'json/people_json.dart';
import 'model/person.dart';

class Home {
  List<Person> allPeople = [];

  Home() {
    allPeople = _fetchPeople();
  }

  List<Person> _fetchPeople() =>
      people.map((person) => Person.fromJson(person)).toList();

  void showAllPeople() {
    for (var person in allPeople) {
      _printPersonDetails(person);
    }
  }

  void showSingleUser({required SearchCriteria criteria, required String str}) {
    var myPeople = (criteria == SearchCriteria.name)
        ? _personFirstNameMatch(str)
        : _personEmailMatch(str);
    Person? person = myPeople.firstOrNull;
    if (person != null) {
      print('$str \x1B[32mMATCH FOUND IN PERSON\x1B[0m');
      _printPersonDetails(person);
    } else {
      // Child First Name
      myPeople = myPeople = (criteria == SearchCriteria.name)
          ? _childFirstNameMatch(str)
          : _childEmailMatch(str);
      person = myPeople.firstOrNull;
      if (person != null) {
        print('$str \x1B[32mMATCH FOUND IN CHILDREN\x1B[0m');
        _printPersonDetails(person);
      } else {
        print('$str \x1B[34mNO MATCH FOUND!\x1B[0m\n');
      }
    }
  }

  List<Person> _personFirstNameMatch(String str) =>
      allPeople.where((e) => e.firstName == str).toList();

  List<Person> _childFirstNameMatch(String str) =>
      allPeople.where((e) => e.children.firstName == str).toList();

  List<Person> _personEmailMatch(String str) =>
      allPeople.where((e) => e.email == str).toList();

  List<Person> _childEmailMatch(String str) =>
      allPeople.where((e) => e.children.email == str).toList();

  void _printPersonDetails(Person person) {
    print('''
      -------------------------------------------------
      Person:
      id: \x1B[33m${person.id}\x1B[0m, first name: \x1B[33m${person.firstName}\x1B[0m, last name: \x1B[33m${person.lastName}\x1B[0m, email: \x1B[33m${person.email}\x1B[0m
      Children:
      first name: \x1B[33m${person.children.firstName}\x1B[0m, last name: \x1B[33m${person.children.lastName}\x1B[0m, email: \x1B[33m${person.children.email}\x1B[0m
      -------------------------------------------------
      ''');
  }
}

enum SearchCriteria { name, email }
