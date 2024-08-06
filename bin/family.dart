import '../json/json.dart';
import '../model/parent.dart';
import '../interface/interface.dart';

void main(List<String> arguments) {
  List<Parent> parents = [];
  for (var parent in familyData) {
    parents.add(Parent.fromJson(parent));
  }
  
  interface(parents);
}
