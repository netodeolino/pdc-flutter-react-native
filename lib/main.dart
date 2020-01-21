import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Caronas CE'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.purpleAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Caronas CE',
            style: TextStyle(fontSize: 40.0),
          ),
        )
      )
    );
  }
}