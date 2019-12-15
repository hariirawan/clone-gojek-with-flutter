import 'package:clone_gojek/widgets/menu-item/menu-item.widget.dart';
import 'package:flutter/material.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({
    Key key,
  }) : super(key: key);

  _showModalBottomSheet(context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Kesayanganmu"),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.green[500])),
                      child: Text(
                        "Back",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  MenuItem(
                    images: 'images/goride.png',
                    name: 'GoRide',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MenuItem(
                    images: 'images/gosend.png',
                    name: 'GoSend',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MenuItem(
                    images: 'images/gocar.png',
                    name: 'GoCar',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MenuItem(
                    images: 'images/gopulsa.png',
                    name: 'GoPulsa',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MenuItem(
                    images: 'images/gofood.png',
                    name: 'GoFood',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MenuItem(
                    images: 'images/godeals.png',
                    name: 'GoDeals',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MenuItem(
                    images: 'images/gobluebird.png',
                    name: 'GoBluebird',
                    textStyle: TextStyle(color: Colors.black),
                    function: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MenuItem(
                      images: 'images/more-1.png',
                      name: 'Lainnya',
                      textStyle: TextStyle(color: Colors.black),
                      function: () => _showModalBottomSheet(context))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
