



import 'package:asg8/models/family.dart';

class FamilyData{


  List <Map<String,dynamic>> familyList = [];



  void findUserChild({required String firstName}){

    for(var val in familyList){

      if(val["first_name"] == firstName){
        print(val["children"]);
        return;
      }
    }
    print("\n ###########    Not Found    #############\n");



  }



  void findUserFirstName({required String firstName}){

    for(var val in familyList){

      if(val["first_name"] == firstName){
        print(val);
        return;
      }
    }
    print("\n ###########    Not Found    #############\n");



  }



  void findUserEmail({required String email}){

    for(var val in familyList){

      if(val["email"] == email){
        print(val);
        return;
      }
    }
    print("\n ###########    Not Found    #############\n");


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