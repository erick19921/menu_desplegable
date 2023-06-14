import 'package:flutter/material.dart';

import 'package:menu_desplegable/screens/ayuda/ayuda.dart';
import 'package:menu_desplegable/main.dart';
import 'package:menu_desplegable/screens/distribuidor/verificacion.dart';
import 'package:menu_desplegable/screens/mis_pedidos/my_histori_pedidos.dart';
import 'package:menu_desplegable/screens/seg_proteccion/security_protection.dart';
import 'package:menu_desplegable/screens/ajustes/configuraciones.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('DIEGO',
                style: const TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 84, 12, 12))),
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/fotoperfil.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 249, 248, 248),
              //image: DecorationImage(
              //   fit: BoxFit.fill,
              // image: NetworkImage(
              //    'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          // DESDE AQUI EMPIEZA EL LSITADO DE LOS ICONOS
          ListTile(
            leading: Icon(Icons.house),
            title: Text(
              'Principal',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyApp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text(
              'Mis pedidos',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MisPedidos()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Configuraciones',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => InfoDialogScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text(
              'Seguridad y Protección',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      SeguridadProteccionScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text(
              'Ayuda',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AyudaScreen()));
            },
          ),
          Divider(),
          const SizedBox(
            height: 250.0,
            width: 10,
          ),

          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const VerificacionDatosScreen()));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 78, 14, 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20.0), // Radio de borde redondeado de 20.0
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 93, 13, 27)), // Borde del botón de color marrón
              ),
              backgroundColor:
                  Color.fromARGB(255, 246, 242, 243), // Color de fondo marrón
              minimumSize:
                  const Size(0.000001, 50.0), // Tamaño mínimo de 200x50
            ),
            child: const Text('Cambiar modo distribuidor'),
          ),
        ],
      ),
    );
  }
}
