import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vesti/colors.dart';
import 'package:vesti/secret/api.dart';
import 'dart:async';

import 'home_page.dart';

const request = API;

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  return json.decode(response.body);
}
void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingApi(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}

class LoadingApi extends StatefulWidget {
  const LoadingApi({Key? key}) : super(key: key);

  @override
  _LoadingApiState createState() => _LoadingApiState();
}

class _LoadingApiState extends State<LoadingApi> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kPrimaryColor,
        body: HomePage()
      /*FutureBuilder<Map>(
            future: getData(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo.png', height: 45,),
                        Divider(color: kSecondaryColor,
                        thickness: 2,),
                        Text('Carregando Dados',
                          style:  Theme.of(context).textTheme.headline3!.copyWith(
                              color: kSecondaryColor
                          ),),
                      ],
                    ),
                  );
                default:
                  if(snapshot.hasError){
                    return Center(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/logo.png', height: 45,),
                          Divider(color: kSecondaryColor,
                              thickness: 2,),
                          Text('Erro de Conexão',
                            style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: kSecondaryColor,
                            ),),
                        ],
                      ),
                    );
                  }else{
                    //euro = snapshot.data!["data"]["0"]["id"];

                    return HomePage();
                  }
              }
            })*/
    );
  }
}