





import 'package:asg8/data/json.dart';
import 'package:asg8/models/family_data.dart';

void main(){


  FamilyData familyData = FamilyData();

  familyData.radyJson(jsonData);
  familyData.showAllFamilys();


  familyData.findUserFirstName(firstName: "Frederick");

  familyData.findUserEmail(email: "larsonmcfarland@rocklogic.com");
  familyData.findUserChild(firstName: "Larson");


  
}