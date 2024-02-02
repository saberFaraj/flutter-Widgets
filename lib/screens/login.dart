import 'package:flutter/material.dart';
import 'package:helloworld/screens/home.dart';
import 'package:helloworld/screens/sign_up_page.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();
  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.network(
                'https://media.istockphoto.com/id/1170078646/vector/online-shopping-icon-on-white-background-vector-illustration.jpg?s=612x612&w=0&k=20&c=ftvyJt2w6Vp0Gh6lydk03YY4DuLjbWMWQYUGwIKQSCk=',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "login to start shopping",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: ctrlEmail,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your email first";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.person),
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: ctrlPass,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "cannot password to be null";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text("Forget Passowrd? Click on me",
                  style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffbcbcbc),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => signUp()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
