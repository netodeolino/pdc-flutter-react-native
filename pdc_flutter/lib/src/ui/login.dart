import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pdc_flutter/src/models/usuario.model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _emailCtrl = new TextEditingController();
  var _passwordCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.account_circle, size: 90),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                  ),
                  TextFormField(
                    controller: _passwordCtrl,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0XFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                    ),
                    onPressed: submit
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submit() async {
    Navigator.pushNamed(context, '/home');

    // final response = await http.post(
    //   'http://localhost:3000/login',
    //   body: { 'email': _emailCtrl.text, 'password': _passwordCtrl.text }
    // );
    
    // final usuario = UsuarioModel.fromJson(json.decode(response.body));
    
    // if (response.statusCode == 200) {
    //   final prefs = await SharedPreferences.getInstance();
    //   prefs.setString('pdc', usuario.toString());

    //   Navigator.pushNamed(context, '/home');
    // } else {
    //   dialog();
    // }
  }

  dialog() {
    showDialog(context: context, child:
      new AlertDialog(
        title: new Text("Atenção!"),
        content: new Text("Email e/ou senha incorretos"),
      )
    );
  }
}
