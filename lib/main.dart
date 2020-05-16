import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const req= "https://api-seetec.heroku.com.com/listarcursos";

void main() {
  // retornoApi();
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();
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
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Usuário:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  )
              ) ,
              controller: login,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Senha:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  )
              ),
              obscureText: true,
              controller: senha,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                child:  RaisedButton(
                  onPressed: () {
                    if (login.text == "admin" && senha.text == "1234"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bemvindo()));
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => erroLogin()));
                    }
                  },
                  //onPressed: (){imprimir(login.text,senha.text);},
                  child: Text("Logar",
                     style: TextStyle(color:Colors.white, fontSize: 25.0)),
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              "Esqueci a senha",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 25.0),
            ),
          ],
        ),
      )
    );
    }
    void imprimir (String usuario, String senha){
    print("Usuario $usuario Senha $senha");
  }
}

class bemvindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    retornoApi();
    return Scaffold (
      appBar: AppBar(
       title: Text("Seja bem vindo!"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Voltar"),
        ),
      ),
    );
  }
}


class erroLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Usuário Inválido!"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Voltar"),
        ),
      ),
    );
  }
}

void retornoApi() async {
 http.Response response = await http.get(req);
 print (json.decode(response.body));
}