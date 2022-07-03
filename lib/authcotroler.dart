import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brokto/home.dart';
import 'package:flutter_brokto/login.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthContrller extends GetxController {
  //controler for createaccount page//
  final TextEditingController emailContrler = TextEditingController();
  final TextEditingController nameContrler = TextEditingController();
  final TextEditingController phoneContrler = TextEditingController();
  final TextEditingController addressContrler = TextEditingController();
  final TextEditingController bloodContrler = TextEditingController();
  final TextEditingController passwordContrler = TextEditingController();

  //these are the contrler for signin method which is for login perpose//

  final TextEditingController loginemailContrler = TextEditingController();
  final TextEditingController loginnameContrler = TextEditingController();
  final TextEditingController loginphoneContrler = TextEditingController();
  final TextEditingController loginaddressContrler = TextEditingController();
  final TextEditingController loginbloodContrler = TextEditingController();
  final TextEditingController loginpasswordContrler = TextEditingController();

  //create account method//

  final auth = FirebaseAuth.instance;

  Future<void> createaccount() async {
    final user = await auth.createUserWithEmailAndPassword(
        email: emailContrler.text, password: passwordContrler.text);

    final firestore = FirebaseFirestore.instance;
    firestore.collection('users').doc(user.user!.uid).set({
      "email": emailContrler.text,
      "name": nameContrler.text,
      "phone": phoneContrler.text,
      "address": addressContrler.text,
      "group": bloodContrler.text,
      "password": passwordContrler.text
    });

    if (user != null) {
      Get.to(LogInPage());
    } else {
      print("something went wrong");
    }
  }

  //this is the method for login//

  Future<void> login() async {
    final user = await auth.signInWithEmailAndPassword(
        email: loginemailContrler.text, password: loginpasswordContrler.text);

        if(user != null){
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("user ID", user.user!.uid);
          Get.to(HomePage());
        }else{
          print("Something went wrong");
        }
  }

  //method for logout user//

  Future <void> logoutUser()async{
    await auth.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.offAll(LogInPage());
  }
}
