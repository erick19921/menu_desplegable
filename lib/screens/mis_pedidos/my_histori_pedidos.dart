import 'package:flutter/material.dart';

import '../NavBar.dart';

class MisPedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFFA72138),
        title: Text('Historial de pedidos'),
      ),
      body: Center(),
    );
  }
}
