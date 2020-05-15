import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ) ,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline,
              size: 120.0,
              color: Colors.blue,
            ),
            TextField(keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Usuário:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  )
              ) ,
            ),
            TextField(keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Senha:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                child:  RaisedButton(
                  onPressed: (){},
                  child: Text("Logar"),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}


