import 'package:flutter/material.dart';
import 'package:persistencia_dados/core/presentation/components/brand/brand_image.dart';
import 'package:persistencia_dados/core/presentation/components/brand/brand_title.dart';
import 'package:persistencia_dados/core/presentation/components/buttons/default_text_button.dart';
import 'package:persistencia_dados/core/presentation/components/checkbox/checkbox.dart';
import 'package:persistencia_dados/features/produtos/pages/crud_page.dart';
import 'package:persistencia_dados/welcome/data/datasources/welcome_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatelessWidget {
  bool _checkedBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BrandTitleWidget(),
            BrandImageWidget(
              width: MediaQuery.of(context).size.width * 0.9,
              height:MediaQuery.of(context).size.height * 0.5
            ),
            _buildBottomRow(context),
          ],
        ),
      ),
    );
  }

  _buildWelcomeText() {
    return Text(
      'Seja bem-vindo(a)',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18
      ),
      );
  }

  _buildBottomRow(BuildContext context) {
    return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CheckBoxWidget(onChanged: (value) {
          _checkedBoxValue = value;
        },),
        DeafaultTextButton(
          text: 'Avançar',
          textFontSize: 24,
           onPressed: () async{
            var sp = await SharedPreferences.getInstance();
            var ds = WelcomeDataSource(sharedPreferences: sp);

            await ds.registerDontShowAgain(value: _checkedBoxValue);

            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ProdutoCRUDPage()));
           },
          )
      ],
    );
  }
}