import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Lista de compras',
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      accentColor: Colors.orange,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> compras = [];

  @override
  void initState() {
    super.initState();
    compras.add('macarrão');
    compras.add('Atum');
    compras.add('colve');
    compras.add('banana');
  }

  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      //new
      appBar: AppBar(
        // new
        title: Text('LISTA DE COMPRAS'), //new
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: compras.length,
          //itemBuilder:(BuildContext (context, index) => Text(compras[index])),
          itemBuilder: (BuildContext ctxt, index) {
            return Dismissible(
                //Aqui esse código vai conseguir araastar os item de compras
                key: Key(compras[index]),
                child: Card(
                  child: ListTile(title: Text(compras[index])),
                ));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('CLICOU');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
