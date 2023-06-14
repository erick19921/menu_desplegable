import 'package:flutter/material.dart';
//import 'package:menu_desplegable/widgets/input_text_login.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(const LicenciaConducirScreen());

class LicenciaConducirScreen extends StatelessWidget {
  const LicenciaConducirScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ingreso de datos online'),
          backgroundColor: Color(0xFFA72138),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  NumPlaca(),
                  FotoLicencia(),
                  FotoLicenciaAtras(),
                  RoundBorderButton(onPressed: () {}, label: 'Guardar')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumPlaca extends StatelessWidget {
  const NumPlaca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        height: 130,
        width: 0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 0.1),
            Text(
              'Numero de licencia',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FotoLicencia extends StatelessWidget {
  const FotoLicencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        height: 358,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Text(
              'Licencia de conducir(Frente)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: Image.asset('assets/cedula.png'),
            ),
            ElevatedButton.icon(
              onPressed: _pickImage,
              icon: const Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0)),
              label: const Text('Añadir',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.red[900]!, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class FotoLicenciaAtras extends StatelessWidget {
  const FotoLicenciaAtras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        height: 358,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Text(
              'Licencia de conducir(parte trasera)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: Image.asset('assets/cedula.png'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0)),
              label: const Text('Añadir',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.red[900]!, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

//facha de expiración de la licencia
class FechaExpiracionCedula extends StatelessWidget {
  const FechaExpiracionCedula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        height: 130,
        width: 0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 0.1),
            Text(
              'Fecha de expiración de la licencia',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
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
    this.borderWidth = 1.5,
    this.borderColor = const Color.fromARGB(255, 139, 32, 24),
    this.padding = const EdgeInsets.symmetric(vertical: 3, horizontal: 40),
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

Future<void> _pickImage() async {
  final picker = ImagePicker();
  final pickedImage = await picker.getImage(source: ImageSource.gallery);

  if (pickedImage != null) {
    // Aquí puedes procesar la imagen seleccionada
    // Por ejemplo, puedes mostrarla en un widget Image o subirla a un servidor
  }
}
