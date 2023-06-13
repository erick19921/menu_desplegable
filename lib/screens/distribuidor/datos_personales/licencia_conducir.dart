import 'package:flutter/material.dart';

class LicenciaCoducirScreen extends StatelessWidget {
  const LicenciaCoducirScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Licencia de conducir"),
        ),
        body: Container(
          // padding: const EdgeInsets.all(11.0),
          // width: 700,
          // height: 800,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromARGB(255, 195, 200, 204),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.red,
                    height: 120,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Column(
                      children: [
                        Text('Ingrese el número de placa'),
                        //ButtonActivateIntent(),
                        TextFormField(
                          keyboardType: TextInputType.number,
                        ),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Siguiente'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.red,
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Column(
                      children: [
                        const Text(
                            'Ingrese la foto de la parte delantera de la licencia'),
                        //ButtonActivateIntent(),
                        TextFormField(
                          keyboardType: TextInputType.number,
                        ),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Siguiente'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.red,
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Column(
                      children: [
                        Text(
                            'Ingrese una fotografia de la parte trasera de la licencia'),
                        //ButtonActivateIntent(),
                        TextFormField(
                          keyboardType: TextInputType.number,
                        ),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Siguiente'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
