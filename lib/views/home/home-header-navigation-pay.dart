import 'package:flutter/material.dart';

class HomeHeaderNavigationPay extends StatelessWidget {
  const HomeHeaderNavigationPay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/gopay.png',
            scale: 3,
          ),
          Text('Rp. 100.000',
              style: TextStyle(color: Colors.white, fontSize: 12.0)),
        ],
      ),
    );
  }
}
