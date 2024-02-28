

import 'package:flutter/material.dart';

class Data{
  int id;
  String name;
  int salary;
  int exp;
  String company_name;
  int age;
  String qualification;
  String gender;
  int mo_num;
  Data(
      {required this.id, required this.name , required this.salary, required this.exp, required this.company_name, required this.age, required this.qualification, required this.gender,required this.mo_num}
      );
  factory Data.employ({required Map data}){
    return Data(id: data['id'], name: data['name'], salary: data['salary'], exp: data['exp'], company_name: data['company_name'], age: data['age'], qualification: data['qualification'], gender: data['gender'], mo_num: data['mo_num']);
  }
}
List<Map<String,dynamic>> employdata = [

  {"id":"1","name":"Aman","salary":"2344","exp":"4","Company_name":"Star","Age":"19","qualification":"b.ca","Gender":"Male","mo_num":"9087907645"},
  {"id":"2","name":"Krishna","salary":"2356","exp":"6","Company_name":"Dwella","Age":"25","qualification":"b.sc","Gender":"Male","mo_num":"7854367890"},
  {"id":"3","name":"Vraj","salary":"90000","exp":"6","Company_name":"Star","UI/UX":"24","qualification":"M.CA","Gender":"Male","mo_num":"9089765432"},
  {"id":"4","name":"Het","salary":"10000","exp":"2","Company_name":"Coders","Age":"20","qualification":"12","Gender":"Male","mo_num":"9807613456"},
  {"id":"5","name":"Jash","salary":"7000","exp":"1","Company_name":"Star","Age":"18","qualification":"b.ca","Gender":"Male","mo_num":"9087654320"},
  {"id":"6","name":"Akshank","salary":"2000","exp":"3","Company_name":"A.k","Age":"18","qualification":"b.ca","Gender":"Male","mo_num":"9876590345"},
  {"id":"7","name":"Meena","salary":"7000","exp":"1","Company_name":"netsol","Age":"19","qualification":"d.com","Gender":"Female","mo_num":"8907654320"},
  {"id":"8","name":"Karan","salary":"10000","exp":"4","Company_name":"ruby","Age":"20","qualification":"b.ca","Gender":"Male","mo_num":"9087654350"},
  {"id":"9","name":"amar","salary":"30000","exp":"6","Company_name":"opal","Age":"22","qualification":"b.ca","Gender":"Male","mo_num":"9087654350"},
  {"id":"10","name":"Vijay","salary":"8999","exp":"3","Company_name":"bk","Age":"23","qualification":"Diploma","Gender":"Male","mo_num":"7895678907"},
];



void main(){
  List<Data> alldata= employdata.map((e) => Data.employ(data : e)).toList();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Employ Data"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ...alldata
                .map((e) => Text(
              "Id:-${e.id} Name:-${e.name}  Salary:-${e.salary} Experience:-${e.exp} company_name:-${e.company_name} age:-${e.age} qualification:-${e.qualification} gender:-${e.gender} mobile_number:-${e.mo_num}",
            )
            )
          ],
        ),
      ),
    ),
  );
}