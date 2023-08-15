import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(204, 204, 255, 1),
        body: Center(
            child: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.white,
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assest/images/task2_image.png",
                width: 300,
                height: 300,
              ),
              SizedBox(
                height: 60,
              ),
              Text("Safe Payment, Happy You!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Text(
                "Create a fresh virtual credit card for all your \nshopping and banking needs ",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.deepPurpleAccent,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
