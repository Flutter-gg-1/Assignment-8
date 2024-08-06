import '../json/json.dart';
import '../model/parent.dart';
import '../model/child.dart';

void main(List<String> arguments) {
  List<Parent> parents = [];
  for (var parent in familyData) {
    parents.add(Parent.fromJson(parent));
  }

  for (var parent in parents) {
    parent.parentInfo();
  }
}
