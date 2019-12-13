import 'package:clone_gojek/widgets/menu-item/menu-item.widget.dart';
import 'package:flutter/material.dart';

class HomeNavigationPay extends StatelessWidget {
  const HomeNavigationPay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0))),
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MenuItem(images: 'images/pay.png', name: 'Bayar'),
            MenuItem(images: 'images/promo.png', name: 'Promo'),
            MenuItem(images: 'images/topup.png', name: 'Saldo'),
            MenuItem(images: 'images/more.png', name: 'Lainnya'),
          ],
        ),
      ),
    );
  }
}
