import 'package:flutter/material.dart';

class InformacionBasicaScreen extends StatelessWidget {
  const InformacionBasicaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textField1Controller = TextEditingController();
    final TextEditingController textField2Controller = TextEditingController();
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Ingreso de datos personales'),
    //       backgroundColor: Color(0xFFA72138),
    //     ),
    //     body: CustomScrollView(
    //       slivers: [
    //         SliverList(
    //           delegate: SliverChildListDelegate(
    //             [FormScreen()],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingreso de datos personales'),
        backgroundColor: Color(0xFFA72138),
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextField(
              controller: textField1Controller,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: textField2Controller,
              decoration: InputDecoration(
                labelText: 'correo',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
                String value1 = textField1Controller.text;
                String value2 = textField2Controller.text;
                print('Campo 1: $value1');
                print('Campo 2: $value2');
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}

class FormScreen extends StatelessWidget {
  final TextEditingController textField1Controller = TextEditingController();
  final TextEditingController textField2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textField1Controller,
              decoration: InputDecoration(
                labelText: 'Campo 1',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: textField2Controller,
              decoration: InputDecoration(
                labelText: 'Campo 2',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
                String value1 = textField1Controller.text;
                String value2 = textField2Controller.text;
                print('Campo 1: $value1');
                print('Campo 2: $value2');
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
