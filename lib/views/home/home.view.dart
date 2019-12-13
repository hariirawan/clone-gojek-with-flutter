import 'package:clone_gojek/views/home/home-content.dart';
import 'package:clone_gojek/views/home/home-header-navigation-pay.dart';
import 'package:clone_gojek/views/home/home-navigation-pay.view.dart';
import 'package:clone_gojek/views/home/home-navigation.view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          height: 40.0,
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300], width: 1.0),
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: 'Mau cari apa di Gojek'),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/diskon.png',
                      scale: 3,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Promo"),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                )),
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  HomeHeaderNavigationPay(),
                  HomeNavigationPay(),
                  HomeNavigation(),
                ],
              )),
          HomeContent()
        ],
      ),
    );
  }
}
