// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool x = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: '20 ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  children: [
                                    TextSpan(
                                        text: '/30',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                    TextSpan(
                                        text: '\n\nRadio 160',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 38)),
                                    TextSpan(
                                        text: '\n115K + Favourite',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff242526),
                            child: Icon(
                              Icons.tv,
                              size: 18,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 7,
                      right: 30,
                      child: Stack(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(25),
                            elevation: 5,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Positioned(
                              left: 3,
                              top: 3,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.blue,
                                backgroundImage: AssetImage("assets/cdbg.jpg"),
                              )),
                          // ignore: prefer_const_constructors
                          Positioned(
                              left: 19,
                              top: 19,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.white,
                              )),
                        ],
                      ))
                ],
              )),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My Favourite (24)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  x = !x;
                                });
                              },
                              child: x == true
                                  ? Text("View Less",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14))
                                  : Text("View All",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: x,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage("assets/1.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text("Let me Love you",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("DJ Snake",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      Text("4.38",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage("assets/6.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text("Love me like you do",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("DJ Snake",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      Text("4.38",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage("assets/8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text("Don't Let me down",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("DJ Snake",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      Text("4.38",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage("assets/9.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text("Take me with you",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("DJ Snake",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      Text("4.38",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage("assets/7.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text("Feel Me",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("DJ Snake",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      Text("4.38",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: Text("Similer Broadcast",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/2.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Jennifer Lopez",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/3.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Camila Cabello",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/4.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("La Isla Bonita",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/5.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("DHARIA",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/12.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Taylor Swift",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/14.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Axel Johansson",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/11.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Mia Martina",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/10.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Anne Marie",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/13.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Text("Bilionera",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
