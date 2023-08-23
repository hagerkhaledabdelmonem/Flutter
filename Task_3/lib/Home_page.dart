import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar() : super();

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Orders Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Vouchers Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Offer Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded),
                label: 'Orders',),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined),
              label: 'Vouchers',),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'Offers',),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepOrange,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
