import 'package:flutter/material.dart';
import 'package:persistencia_dados/features/produtos/pages/crud_page.dart';
import 'package:persistencia_dados/welcome/data/datasources/welcome_datasource.dart';
import 'package:persistencia_dados/welcome/pages/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PeF Pratication',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
        buttonColor: Colors.blue.shade500
      ),
      home: FutureBuilder(
        future: _buildHome(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            return snapshot.data;
          }
          return Container();
        },
      ),
    );
  }

  Future<Widget> _buildHome() async{
    var sp = await SharedPreferences.getInstance();
    var ds = WelcomeDataSource(sharedPreferences: sp);

    if(ds.getDontShowAgain()) {
      return ProdutoCRUDPage();
    }
    return WelcomePage();
  }
}

