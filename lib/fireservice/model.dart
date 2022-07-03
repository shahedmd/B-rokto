import 'package:flutter/material.dart';

class FireserviceModel{
  String? name;
  String? address;
  String? number;

  FireserviceModel({required this.name, required this.address, this.number});

  FireserviceModel.fromjson(Map<String,dynamic>json){
    name= json["name"];
    address = json["address"];
    number = json["number"];
  }
}