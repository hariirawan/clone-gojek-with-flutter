import 'package:clone_gojek/views/chat/chat.view.dart';
import 'package:clone_gojek/views/home/home.view.dart';
import 'package:clone_gojek/views/inbox/inbox.view.dart';
import 'package:clone_gojek/views/profile/profile.view.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;

  final _layoutPage = [Home(), Profile(), Chat(), Inbox(), Inbox(), Inbox()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _menuNavigation() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset(
                    _selectedIndex == 0
                        ? 'images/home.png'
                        : 'images/home-non.png',
                    scale: 2.5,
                  )),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset(
                    _selectedIndex == 1
                        ? 'images/orders.png'
                        : 'images/orders-non.png',
                    scale: 2.5,
                  )),
              title: Text("Orders")),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset(
                    _selectedIndex == 2
                        ? 'images/chat.png'
                        : 'images/chat-non.png',
                    scale: 2.5,
                  )),
              title: Text("Chat")),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset(
                    _selectedIndex == 3
                        ? 'images/inbox.png'
                        : 'images/inbox-non.png',
                    scale: 2.5,
                  )),
              title: Text("Inbox")),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset(
                    _selectedIndex == 4
                        ? 'images/account.png'
                        : 'images/account-non.png',
                    scale: 2.5,
                  )),
              title: Text("Account")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _layoutPage.elementAt(_selectedIndex),
        bottomNavigationBar: _menuNavigation());
  }
}
