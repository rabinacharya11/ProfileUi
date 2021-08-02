import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @SemanticsHintOverrides()
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return orientation == Orientation.portrait
          ? Scaffold(
              body: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 400,
                  color: Colors.white,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Profile",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.settings,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),

                Positioned(
                  top: 120,
                  right: 15,
                  left: 15,
                  child: Card(
                    elevation: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                          children: [
                            Text(
                              "John Rambo",
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Age: 25"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.monetization_on,
                                        color: Colors.purple,
                                        size: 19,
                                      ),
                                      Text("1500")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.purple,
                                        size: 19,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 82,
                  right: 5,
                  left: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 42,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/user"),
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  right: 15,
                  left: 15,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: Container(
                              width: 87,
                              child: Column(
                                children: [
                                  Text(
                                    "542",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Likes",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Colors.purpleAccent,
                                      Colors.purple
                                    ])),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              width: 87,
                              child: Column(
                                children: [
                                  Text(
                                    "670",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Rides',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Colors.blueAccent,
                                      Colors.blue.shade900,
                                    ])),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              width: 87,
                              child: Column(
                                children: [
                                  Text(
                                    "542",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ per ride",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Colors.deepOrange.shade200,
                                      Colors.deepOrange.shade900
                                    ])),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned(
                    left: 15,
                    right: 15,
                    bottom: 40,
                    top: 370,
                    child: Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                "Your Past Rides",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              GestureDetector(
                                onTap: (){
                                  ///[ YOUR CODE TO NAVIGATE]
                                  ///
                                  //Navigator.of(context).pushNamed(context, "/details")
                                  print("navigating");
                                },
                                child: Card(
                                  child: ListTile(
                                    leading: Icon(Icons.car_rental),
                                    title: Center(
                                        child: Text(
                                      "Driver: Driver5",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    )),
                                    subtitle: Center(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Text("Date: 29th May, 2021"),
                                            Text("Distance: 29km")
                                          ],
                                        ),
                                      ),
                                    ),
                                    trailing: Text(
                                      "-\$10",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.car_rental),
                                  title: Center(
                                      child: Text(
                                    "Driver: Driver4",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  subtitle: Center(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text("Date: 29th May, 2021"),
                                          Text("Distance: 19km")
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Text(
                                    "-\$10",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.red),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.car_rental),
                                  title: Center(
                                      child: Text(
                                    "Driver: Driver3",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  subtitle: Center(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text("Date: 9th May, 2021"),
                                          Text("Distance: 2km")
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Text(
                                    "-\$10",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.red),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.car_rental),
                                  title: Center(
                                      child: Text(
                                    "Driver: Driver2",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  subtitle: Center(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text("Date: 26h May, 2021"),
                                          Text("Distance: 9km")
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Text(
                                    "-\$10",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.red),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ))
          : Center(
              child: Text(
                "Desing Not Available for Landscape mode",
                style: TextStyle(decoration: TextDecoration.none),
              ),
            );
    });
  }
}
