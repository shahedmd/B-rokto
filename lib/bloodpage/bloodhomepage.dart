import 'package:flutter/material.dart';

class BloodHomePage extends StatefulWidget {
  const BloodHomePage({ Key? key }) : super(key: key);

  @override
  State<BloodHomePage> createState() => _BloodHomePageState();
}

class _BloodHomePageState extends State<BloodHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 34, 34),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 35, 34, 34),
      elevation: 0,),
      body: Container(child: Column(children: [
        Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 30),
              margin: EdgeInsets.only(top: 20),
              child: Text("B-rokto Blood section",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: 25,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10,),
            Container(width: double.infinity,
            padding: EdgeInsets.only(left: 30),
              child: Text("Select the blood group and call a donar.",style: TextStyle(
                      color: Color.fromARGB(255, 212, 208, 208), fontSize: 17)),),

                      SizedBox(height: 50,),

                      Expanded(child: GridView.count(crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      padding: EdgeInsets.all(20),
                      children: [
                        InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("O+",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("O-",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("A+",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("A-",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("AB+",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("AB-",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("B+",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 191, 85, 77),
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("B-",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                      ],))
      ]),),
    ));
  }
}