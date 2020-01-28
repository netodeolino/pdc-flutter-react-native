import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class IpvaPage extends StatefulWidget {
  @override
  _IpvaPageState createState() => _IpvaPageState();
}

class _IpvaPageState extends State<IpvaPage> {

  var _placaCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushNamed(context, '/home');
          }
        ),
        title: Text('Valor do IPVA'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _placaCtrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Placa",
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pesquisar,
        tooltip: 'Pesquisar',
        child: Icon(Icons.search),        
      ),
    );
  }

  void pesquisar() async {
    final response = await http.get("http://www2.sefaz.ce.gov.br/ipva/api/ipva/v1/marcamodelo/veiculo/placa/${_placaCtrl.text.toUpperCase()}");
    print(response.body);
  }
}