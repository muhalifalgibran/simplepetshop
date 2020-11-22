import 'package:flutter/material.dart';
import 'package:petshop/success_update.dart';
import 'package:petshop/update_petshop.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "Do you have something new for me?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdatePetScreen()),
                    );
                  },
                  child: Container(
                    color: Colors.black45,
                    width: 160,
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image(
                            image: AssetImage('assets/images/petshop.jpeg'),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          color: Colors.blue,
                          child: Text(
                            "update petshop",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black45,
                  width: 160,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image(
                          image: AssetImage('assets/images/anak_anjing.jpeg'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 40,
                        color: Colors.blue,
                        child: Text(
                          "update health information",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black45,
                  width: 160,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image(
                          image: AssetImage('assets/images/task.jpeg'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 40,
                        color: Colors.blue,
                        child: Text(
                          "user report",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SuccessUpdate()),
                    );
                  },
                  child: Container(
                    color: Colors.black45,
                    width: 160,
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image(
                            image: AssetImage('assets/images/kunci.jpeg'),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          color: Colors.blue,
                          child: Text(
                            "reset password",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black45,
                  width: 160,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image(
                          image: AssetImage('assets/images/sampah.jpeg'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 40,
                        color: Colors.blue,
                        child: Text(
                          "clear data user",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
