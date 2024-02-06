import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome!',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
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