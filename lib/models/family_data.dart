



import 'package:asg8/models/family.dart';

class FamilyData{


  List <Map<String,dynamic>> familyList = [];



  void findUserFirstName({required String firstName}){

    for(var val in familyList){

      if(val["first_name"] == firstName){
        print(val);
      }
    }


  }



  void  radyJson(List <Map<String , dynamic>> lis){
    for(var val in lis){

      familyList.add(FamilyModel.fromJson(val).toJSon());
    }
    
  }


  void showAllFamilys(){

    for(var val in familyList){
      print(val);
      print("-"*45);
    }
    
  }
}