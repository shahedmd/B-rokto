import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_brokto/ambulance/model.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter_brokto/fireservice/model.dart';

class Fireservice extends StatefulWidget {
  const Fireservice({Key? key}) : super(key: key);

  @override
  State<Fireservice> createState() => FireserviceState();
}

class FireserviceState extends State<Fireservice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 34, 34),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 35, 34, 34),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text("Fireservice List",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Text("Fireservice List under Munshiganj Sadar",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            Container(
              child: FutureBuilder(future: readJsonfile(),
                builder: ((context, snapshot) {
                if(snapshot.hasError){
                  return Text("Something Went Wrong");
                }else{
                  var items = snapshot.data as List<FireserviceModel>;
                  return Expanded(
                    child: ListView.builder(itemCount: items== null? 0: items.length,
                      itemBuilder: ((context, index) {
                      
                      var item = items[index];
                      return Container(margin: EdgeInsets.all(15),
                      
                      
                        child: ListTile(tileColor: Colors.black,textColor: Color.fromARGB(255, 213, 203, 203),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          title: Text(item.name.toString()),
                          subtitle: Text(item.address.toString()),
                          trailing: InkWell(onTap: (){},
                            child: Icon(Icons.phone,color: Colors.red,)),),
                      );
                    })),
                  );
                }
              })),
            )
          ],
        ),
      ),
    ));
  }
}

Future<List<FireserviceModel>> readJsonfile() async {
  final jsondata =
      await rootBundle.rootBundle.loadString('assets/fireservice.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => FireserviceModel.fromjson(e)).toList();
}
