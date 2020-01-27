import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gauge/flutter_gauge.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Prova de Conceito'),
        actions: <Widget>[
          Icon(Icons.notifications)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(3),
        child: Card(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_left, size: 50, color: Colors.orange),
                  Image.network('http://trrsaojose.com.br/wp-content/uploads/2017/04/1.png', width: 150),
                  Icon(Icons.keyboard_arrow_right, size: 50, color: Colors.orange)
                ],
              ),
              SizedBox(height: 20),
              FlutterGauge(
                circleColor: Colors.orange,
                secondsMarker: SecondsMarker.none,
                hand: Hand.short,
                number: Number.none,
                width: 180,
                index: 38.0,
                fontFamily: "Iran",
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 33
                ),
                counterAlign: CounterAlign.center,
                isDecimal: false
              ),
              Container(
                child: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(text: 'UM',),
                    Tab(text: 'DOIS',),
                    Tab(text: 'TRES',),
                  ],
                ),
              ),
              Container(
                height: 70,
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    Table(
                      border: TableBorder.all(width: 1.0, color: Colors.black),
                      children: [
                        TableRow(
                          children: [
                            Text('nome'),
                            Text('jose'),
                          ]
                        ),
                        TableRow(
                          children: [
                            Text('44444'),
                            Text('33333'),
                          ]
                        ),
                        TableRow(
                          children: [
                            Text('44444'),
                            Text('33333'),
                          ]
                        ),
                      ]
                    ),
                    CarouselSlider(
                      height: 400.0,
                      items: [1,2,3,4,5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image.network('https://www.ceara.gov.br/wp-content/uploads/2020/01/Meu-IPVA-2020.jpeg')
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Text('teste')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),        
      ),
    );
  }
}
