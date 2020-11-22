import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petshop/success_update.dart';

class UpdatePetScreen extends StatefulWidget {
  @override
  _UpdatePetScreenState createState() => _UpdatePetScreenState();
}

class _UpdatePetScreenState extends State<UpdatePetScreen> {
  String name, location, phoneNumber;
  bool petHotel = false;
  bool grooming = false;
  bool petClinic = false;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image(
                        image: AssetImage('assets/images/petshop_logo.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Update Petshop",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Petshop's name",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Location",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Phone's Number",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Facilities Available:",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            CheckboxListTile(
              title: Text("Pet Hotel"),
              value: petHotel,
              onChanged: (newValue) {
                setState(() {
                  petHotel = newValue;
                  // checkedValue = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            CheckboxListTile(
              title: Text("Grooming"),
              value: grooming,
              onChanged: (newValue) {
                setState(() {
                  grooming = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            CheckboxListTile(
              title: Text("Pet Clinic"),
              value: petClinic,
              onChanged: (newValue) {
                setState(() {
                  petClinic = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () async {
                  CollectionReference tasks = firestore.collection('petshop');
                  DocumentReference result = await tasks.add(<String, dynamic>{
                    'name': name,
                    'location': location,
                    'phoneNumber': phoneNumber,
                    'petClinic': petClinic,
                    'petHotel': petHotel,
                    'grooming': grooming
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessUpdate()),
                  );
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
