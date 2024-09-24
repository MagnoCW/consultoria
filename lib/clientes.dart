import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Clientes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('lib/images/detalhe_cliente.png'),
                Text('Clientes')
              ],
            ),
            Image.asset('lib/images/cliente1.png'),
            Text('Empresa de software'),
            Image.asset('lib/images/cliente2.png'),
            Text('Empresa de auditoria'),
          ],
        ),
      ),
    );
  }
}