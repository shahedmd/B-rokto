import 'package:flutter/material.dart';
import 'package:flutter_brokto/ambulance/amubalncepage.dart';
import 'package:flutter_brokto/bloodpage/bloodhomepage.dart';
import 'package:flutter_brokto/fireservice/fireservicepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 34, 34),
        elevation: 0,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.add_box,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 35, 34, 34),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(150))),
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
                child: Text("Md Shahed",
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 208, 208),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20),
                child: Text("Supermarket",
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 208, 208),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 219, 213, 213),
                    size: 30,
                  ),
                  title: Text("Home Page",style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.001,),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.people,
                    color: Color.fromARGB(255, 219, 213, 213),
                    size: 30,
                  ),
                  title: Text("About Us",style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.001,),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.bloodtype,
                    color: Color.fromARGB(255, 219, 213, 213),
                    size: 30,
                  ),
                  title: Text("Blood",style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.001,),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.car_rental,
                    color: Color.fromARGB(255, 219, 213, 213),
                    size: 30,
                  ),
                  title: Text("Ambulance",style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.001,),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.fire_extinguisher,
                    color: Color.fromARGB(255, 219, 213, 213),
                    size: 30,
                  ),
                  title: Text("Fireservice",style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              InkWell(onTap: (){},
                child: Container(width:MediaQuery.of(context).size.width*0.5,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 191, 85, 77),
                              blurRadius: 1,
                              offset: Offset(1, 2), // Shadow position
                            ),
                          ],
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Log Out",textAlign: TextAlign.center,
                style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(top: 20),
              child: Text("B-rokto Over View",
                  style: TextStyle(
                      color: Color.fromARGB(255, 212, 208, 208), fontSize: 20)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(0))),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text("Bikrompur Rokto Seba",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                        "Bikrompur Rokto Seba named as B-Roko. It Is a blood donation app\nWith blood we have amblulance service and fireservice relate service\nYou can call the donar direct from the app and ask for blood.\n\nYou will find your donar in the separated blood group container.\nThis app develop by the first It company of munshiganj SoftverIt\nYou can learn about us from about us.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 212, 208, 208),
                          fontSize: 15,
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 34, 33, 33),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        "About Us",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 30),
              child: Text("Our Services",
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 208, 208),
                    fontSize: 20,
                  )),
            ),
            Divider(
              color: Color.fromARGB(255, 202, 197, 197),
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BloodHomePage()),
                    );
                  },
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
                            size: 50,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("Blood",
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ambulance()),
                    );
                  },
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
                            Icons.car_rental,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("Ambulance",
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fireservice()),
                    );
                  },
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
                            Icons.fire_extinguisher,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("Fireservice",
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
                            Icons.people,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text("About Us",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 180, 180),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
