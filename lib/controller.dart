// import 'dart:convert';

// import 'package:flutter/widgets.dart';
// import 'package:flutter_application_exm/model.dart';
// import 'package:http/http.dart' as http;

// class controller with ChangeNotifier{
// ApiResponce?employeeresponcelist;
// List<Rating> newemployeelist=[

// ];

// getemployeelist()async{
// var url = Uri.parse('https://fakestoreapi.com/products/');
// var response = await http.get(url);
// var decodedata=jsonDecode(response.body);
// employeeresponcelist=ApiResponce.fromJson(decodedata);

// newemployeelist=employeeresponcelist?.employees ?? [];
// print(response.statusCode);
// print(response.body);
// notifyListeners();

// }
// addemployeelist()async{
//   var url = Uri.parse('https://fakestoreapi.com/products/');
// var response = await http.get(url);
// var decodedata=jsonDecode(response.body);
// employeeresponcelist=ApiResponce.fromJson(decodedata);

// newemployeelist=employeeresponcelist?.employees ?? [];

// notifyListeners();
// }
// }


import 'dart:convert';

import 'package:flutter_application_exm/model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class Controller with ChangeNotifier {
  bool isloading =false;
  ApiResponce? responsedata;
  List<ApiResponce> data= []; 

  Future<dynamic> fetchdata() async {
    isloading = true;
    notifyListeners();
    final url = Uri.parse(
        'https://fakestoreapi.com/users');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var decodedata = jsonDecode(response.body);
      print(response.body);
      responsedata = ApiResponce.fromJson(decodedata);
    }
    isloading = false;
    notifyListeners();
  }

  
}