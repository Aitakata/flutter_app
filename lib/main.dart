//import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/login_page.dart';
//import 'package:http/http.dart' as http;

// const req = "https://api-seetec.heroku.com.com/listarcursos";

void main() {
  // retornoApi();
  runApp(MaterialApp(
    home: Home(),
  ));
}
/*
void retornoApi() async {
 http.Response response = await http.get(req);
 print (json.decode(response.body));
}
*/
