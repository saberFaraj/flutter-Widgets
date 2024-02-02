import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:helloworld/categorys/devices_branch.dart';
import 'package:helloworld/categorys/home_branch.dart';
import 'package:helloworld/categorys/wear_branch.dart';
import 'package:helloworld/screens/account_page.dart';
import 'package:helloworld/screens/login.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    homeBranch(),
    wearBranch(),
    devicesBranch()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Online Shop',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your information",
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person, size: 40),
                  Text("Account", style: TextStyle(fontSize: 30)),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info()));
              },
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.shopping_cart, size: 40),
                  Text("Shop car", style: TextStyle(fontSize: 30)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.favorite, size: 40, color: Colors.red),
                  Text("Liked", style: TextStyle(fontSize: 30)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.logout_outlined, size: 40),
                  Text("Login out", style: TextStyle(fontSize: 30)),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ],
        ),
      )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Wears',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smartphone),
            label: 'Devices',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
