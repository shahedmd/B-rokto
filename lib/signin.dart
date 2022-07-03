import 'package:flutter/material.dart';
import 'package:flutter_brokto/home.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => SingInState();
}

class SingInState extends State<SingIn> {
  final formkey = GlobalKey<FormState>();

  validated(){
  final isValid = formkey.currentState!.validate();

  if(formkey.currentState!.validate()){
    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
  }
}

  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 34, 34),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Hi! Users",
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 208, 208),
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Create a Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(key: formkey,
                    child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        validator: (value) {
                         final Pattern  = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regex = new RegExp(Pattern);

                          if(!regex.hasMatch(value!)){
                            return "Enter a valid email";
                          }else{
                            return null;
                          }
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.length<4){
                            return "Enter a valid name";
                          }else{
                            return null;
                          }
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.people,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Enter Your Name",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.length<11){
                            return "Enter a valid number";
                          }else{
                            return null;
                          }
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Enter Your Phone",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Enter a valid name";
                          }else{
                            return null;
                          }
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.location_city,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Enter Your Address",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Enter a blood group";
                          }else{
                            return null;
                          }
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.bloodtype,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Enter Your Blood Group",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        controller: passcontroller,
                        validator: ((value){
                          final Pattern= r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                          RegExp regex = new RegExp(Pattern);
                          if(!regex.hasMatch(value!)){
                            return "Enter a Password";
                          }else if(value.isEmpty){
                            return "Enter a Password";
                          }else{
                            return null;
                          }
                        }),
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Enter Your Password",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if(value != passcontroller.text){
                            return "Password did not match";
                          }else{
                            return null;
                          }
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 198, 198)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 212, 208, 208),
                            ),
                            hintText: "Confirm Your Password",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 212, 208, 208))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    validated();
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "Signin",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

