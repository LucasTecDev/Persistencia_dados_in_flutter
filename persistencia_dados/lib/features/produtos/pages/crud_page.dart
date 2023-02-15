import 'package:flutter/material.dart';

class ProdutoCRUDPage extends StatefulWidget {
  const ProdutoCRUDPage({super.key});

  @override
  State<ProdutoCRUDPage> createState() => _ProdutoCRUDPageState();
}

class _ProdutoCRUDPageState extends State<ProdutoCRUDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dados de Produtos"),
      ),
      //Nome,Descricao,Valor,Imagem
      body: Padding( 
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //divide o espaco do app
          children: [
            Container(child: Column(
              children: [
                TextFormField(decoration: InputDecoration(labelText: 'Nome'),
                ),
                TextFormField(decoration: InputDecoration(labelText: 'Descricao'),
                ),
                TextFormField(decoration: InputDecoration(labelText: 'Valor'),
                ),
              ],
            )
            ),
            Container(
              width: 200,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  FlutterLogo(size: 200,),
                  Icon(
                    Icons.photo_camera,
                    size: 40,
                  )
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 200, height: 60),
              child: ElevatedButton.icon(
                icon: Icon(Icons.save),
                label: Text("Gravar"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}