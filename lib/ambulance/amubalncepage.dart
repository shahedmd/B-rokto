import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_brokto/ambulance/model.dart';
import 'package:flutter/services.dart' as rootBundle;

class Ambulance extends StatefulWidget {
  const Ambulance({Key? key}) : super(key: key);

  @override
  State<Ambulance> createState() => AmbulanceState();
}

class AmbulanceState extends State<Ambulance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 34, 34),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 35, 34, 34),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text("Ambulance List",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: Text("Ambulance List under Munshiganj Sadar",
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
                  var items = snapshot.data as List<AmbulanceModel>;
                  return Expanded(
                    child: ListView.builder(itemCount: items== null? 0: items.length,
                      itemBuilder: ((context, index) {
                      
                      var item = items[index];
                      return Container(padding: EdgeInsets.all(15),
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

Future<List<AmbulanceModel>> readJsonfile() async {
  final jsondata =
      await rootBundle.rootBundle.loadString('assets/ambulance.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => AmbulanceModel.fromjson(e)).toList();
}
