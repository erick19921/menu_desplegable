import 'package:flutter/material.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/cedula_id.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/datos_vehiculo.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/informacion_basica.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/licencia_conducir.dart';

class VerificacionDatosScreen extends StatelessWidget {
  const VerificacionDatosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFFA72138),
        title: const Text('Verificación'),
        elevation: 10,
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Cerrar'),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Información básica'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const InformacionBasicaScreen()));
            },
          ),
          ListTile(
            title: Text('Licencia de conducir'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const LicenciaConducirScreen()));
            },
          ),
          ListTile(
            title: Text('Cédula de identidad'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const CedulaIDScreen()));
            },
          ),
          ListTile(
            title: Text('Datos del vehículo'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const DatosVehicuoScreen()));
            },
          ),
        ],
      ),
    );
  }
}
