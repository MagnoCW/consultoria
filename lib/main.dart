import 'package:consultoria/aempresa.dart';
import 'package:consultoria/clientes.dart';
import 'package:consultoria/contato.dart';
import 'package:consultoria/servicos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ATM Consultoria'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String aEmpresa = 'lib/images/menu_empresa.png';
  String servicos = 'lib/images/menu_servico.png';
  String clientes = 'lib/images/menu_cliente.png';
  String contato = 'lib/images/menu_contato.png';

  void _openEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AEmpresa()));
  }

  void _openServicos() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Servicos()));
  }

  void _openClientes() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Clientes()));
  }

  void _openContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/images/logo.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {_openEmpresa();}, child: Image.asset(aEmpresa),),
                  TextButton(onPressed: () {_openServicos();}, child: Image.asset(servicos),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {_openClientes();}, child: Image.asset(clientes),),
                  TextButton(onPressed: () {_openContato();}, child: Image.asset(contato),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
