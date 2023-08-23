import 'package:flutter/material.dart';
import 'Home_page.dart';
class Login_Page extends StatelessWidget {
  Login_Page({super.key});
  final loginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child:Column(
          children: [

          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              "talabat",
              style: TextStyle(
                  fontSize: 70,
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Sign up for free",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Form(
            key: loginkey,
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter username";
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          labelText: "Username",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.deepOrangeAccent,
                          )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email,
                              color: Colors.deepOrangeAccent)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Password";
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          labelText: "Password",
                          prefixIcon:
                              Icon(Icons.lock, color: Colors.deepOrangeAccent)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Icon(Icons.check_box_outline_blank_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            ),
                      ),
                    ]),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (loginkey.currentState!.validate())
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyNavigationBar()),
                            );
                          },
                        child: Text("Create Account"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange)),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
