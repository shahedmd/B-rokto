import 'package:flutter/material.dart';

class AmbulanceModel{
  String? name;
  String? address;
  String? number;

  AmbulanceModel({required this.name, required this.address, this.number});

  AmbulanceModel.fromjson(Map<String,dynamic>json){
    name= json["name"];
    address = json["address"];
    number = json["number"];
  }
}