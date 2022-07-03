import 'package:flutter/material.dart';
import 'package:flutter_brokto/signin.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 34, 34),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Text(
                    "Login into your account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "B-rokto is an develop by SoftverseIt",
                    style: TextStyle(
                        fontSize: 20.5,
                        color: Color.fromARGB(255, 212, 208, 208)),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  child: Text(
                    "Create a account here, make profile",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20.5,
                        color: Color.fromARGB(255, 212, 208, 208)),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  child: Text(
                    "Donate blood and saves many lifes",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20.5,
                        color: Color.fromARGB(255, 212, 208, 208)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    style: TextStyle(color: Color.fromARGB(255, 207, 198, 198)),
                    decoration: InputDecoration(
                      
                        icon: Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 212, 208, 208),
                        ),
                        hintText: "Enter Your Email",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 212, 208, 208))),
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
                    style: TextStyle(color: Color.fromARGB(255, 207, 198, 198)),
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 212, 208, 208),
                        ),
                        hintText: "Enter Your Password",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 212, 208, 208))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(width: double.infinity,
                    child: Text(
                  "Don't have any Account",
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 208, 208),
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                )),
                SizedBox(height: 8,),
                Divider(color: Colors.white,),
        
                InkWell(onTap: (){
                  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingIn()),
          );
                },
                  child: Container(width: double.infinity,
                    child: Text(
                  "Create a Account",
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 208, 208),
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                )),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
