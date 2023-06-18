import 'package:flutter/material.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/datos_cedula.dart';
import 'datos_personales/datos_licencia.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/datos_vehiculo.dart';
import 'package:menu_desplegable/screens/distribuidor/datos_personales/informacion_basica.dart';

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
          Divider(),
          ListTile(
            title: Text('Licencia de conducir'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const DatosLicenciaScreen()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Cédula de identidad'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const CedulaScreen()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Datos del vehículo'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const DatosVehiculoScreen()));
            },
          ),
          Divider(),
          RoundBorderButton(onPressed: () {}, label: 'Siguiente')
        ],
      ),
    );
  }
}

class RoundBorderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final EdgeInsetsGeometry padding;

  const RoundBorderButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.radius = 20,
    this.borderWidth = 2,
    this.borderColor = const Color.fromARGB(255, 139, 32, 24),
    this.padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onPrimary: Colors.transparent,
          elevation: 0,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: borderColor,
          ),
        ),
      ),
    );
  }
}
