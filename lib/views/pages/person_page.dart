import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
            SizedBox(width: 10),
            Text(
              'Your Account',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox.square(
              dimension: 300,

              child: Center(
                child: Text(
                  'In developing!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ),
            Image.asset('assets/images/fotka.png'),
          ],
        ),
      ),
    );
  }
}