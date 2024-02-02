import 'package:flutter/material.dart';
import 'package:helloworld/screens/home.dart';

class info extends StatelessWidget {
  const info(
      {Key? key,
      required this.tfname,
      required this.tlname,
      required this.temail,
      required this.tpass,
      required this.tvisa,
      required this.tphone})
      : super(key: key);

  final String tfname;
  final String tlname;
  final String temail;
  final String tpass;
  final String tphone;
  final String tvisa;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Online Shop',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
      body: ListView(children: [
        Center(
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/7077/7077313.png',
            width: 150,
            height: 150,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Name: $tfname $tlname",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Email: $temail",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Password: $tpass",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Visa Card: $tvisa",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Phone Number: $tphone",
          style: TextStyle(fontSize: 20),
        ),
      ]),
    );
  }
}
