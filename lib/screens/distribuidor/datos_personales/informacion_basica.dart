import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class InformacionBasicaScreen extends StatefulWidget {
  const InformacionBasicaScreen({Key? key}) : super(key: key);

  @override
  _InformacionBasicaScreenState createState() =>
      _InformacionBasicaScreenState();
}

class _InformacionBasicaScreenState extends State<InformacionBasicaScreen> {
  String _selectedImagePath = '';
  DateTime _selectedDate = DateTime.now();

  void _openImagePicker() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImagePath = pickedFile.path;
      });
    }
  }

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Foto de Perfil'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_selectedImagePath.isNotEmpty)
                          CircleAvatar(
                            backgroundImage:
                                FileImage(File(_selectedImagePath)),
                            radius: 60,
                          )
                        else
                          CircleAvatar(
                            radius: 50,
                            child: Icon(Icons.person),
                          ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _openImagePicker,
                          child: Text('Seleccionar Foto'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Nombre',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Descripción',
                          ),
                        ),
                        SizedBox(height: 20),
                        //Text('Fecha de Nacimiento:'),
                        Text(DateFormat('dd/MM/yyyy').format(_selectedDate)),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: _selectDate,
                          child: Text('Seleccionar Fecha'),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Implementa la lógica para el último botón
                          },
                          child: Text('Guardar'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
