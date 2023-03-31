import 'package:flutter/material.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[50],
          body:Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(height: 150,
                  child: Image.asset('assets/images/header.png')),
          ),
            SizedBox(
              height: 150,
                child: Image.asset("assets/images/doctor.png")),
            Container(
              // alignment: Alignment.center,
              margin: const EdgeInsets.all(50.0),
              color: Colors.green[50],
              child: const Text('Instantly locate and book hospitals',
                  style:TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ))),
              Container(
              margin: const EdgeInsets.all(20.0),
              color: Colors.green[50],
              child: const Text('Empowering emergency responce and healthcare access through extensive hospital search and booking - all at your fingertips',
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500 ))),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF27ba84),
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 30),
                  ),
              onPressed: () {},
              child: const Text('Login in User')),
            Container(
                margin: const EdgeInsets.all(30.0),
                 child: TextButton(
                     onPressed: () {},
                     child: const Text('Login as hospital/clinic',
                       style: TextStyle(
                         color: Color(0xFF27ba84),
                         fontSize: 20,
                       )),
                 ))]))),
    );


  }
}
