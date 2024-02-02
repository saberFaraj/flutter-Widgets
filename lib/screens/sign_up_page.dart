import 'package:flutter/material.dart';
import 'package:helloworld/screens/account_page.dart';
import 'package:helloworld/screens/login.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final ctrlfname = TextEditingController();
  final ctrlLname = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlPass = TextEditingController();
  final ctrlVisa = TextEditingController();
  @override
  void dispose() {
    ctrlfname.dispose();
    ctrlLname.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlPass.dispose();
    ctrlVisa.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.all(20), children: [
      Column(children: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => login()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        Text("Create Your Account Now!",
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center),
      ]),
      SizedBox(height: 25),
      Form(
          key: _formKey,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: TextFormField(
                  controller: ctrlfname,
                  validator: (value) {
                    if (value!.length < 2 || value.length > 5) {
                      return "sorry your name must be in range 2 to 5";
                    } else if (value.isEmpty) {
                      return "cannot to be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text("First Name")),
                )),
            SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: TextFormField(
                  validator: (value) {
                    if (value!.length < 2 || value.length > 5) {
                      return "sorry your name must be in range 2 to 5";
                    } else if (value.isEmpty) {
                      return "cannot to be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text("Last Name")),
                ))
          ])),
      SizedBox(height: 25),
      Form(
          key: _formKey2,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "cannot to be null";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Email")),
              ),
              SizedBox(height: 25),
              TextFormField(
                validator: (value) {
                  if (value!.length > 8) {
                    return "sorry your password must be more than 8";
                  } else if (value.isEmpty) {
                    return "cannot to be null";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Password")),
              ),
              SizedBox(height: 25),
              TextFormField(
                validator: (value) {
                  if (value!.length < 9) {
                    return "sorry your phone number must be 9 numbers";
                  } else if (value.isEmpty) {
                    return "cannot to be null";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Phone Number")),
              ),
              SizedBox(height: 25),
              TextFormField(
                validator: (value) {
                  if (value!.length < 14 || value.length > 14) {
                    return "sorry your cart must be 14 number only";
                  } else if (value.isEmpty) {
                    return "cannot to be null";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Visa Number")),
              ),
              SizedBox(height: 25),
              InkWell(
                child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                onTap: () {
                  if (_formKey.currentState!.validate() &&
                      _formKey2.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => info(
                                tfname: ctrlfname.text,
                                tlname: ctrlLname.text,
                                temail: ctrlEmail.text,
                                tpass: ctrlPass.text,
                                tphone: ctrlPhone.text,
                                tvisa: ctrlVisa.text)));
                  }
                },
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook_outlined,
                            color: Colors.blue, size: 30),
                        Text(
                          "Sign in via Facebook",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ]),
                ),
                onTap: () {},
              ),
            ],
          ))
    ]));
  }
}
