import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NamaPembeli extends StatelessWidget {
  const NamaPembeli({
    Key key,
    @required this.eNama,
  }) : super(key: key);

  final TextEditingController eNama;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: eNama,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(40.0), 
        ),
        labelText: "Masukkan Nama Anda",
          labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold, 
          color: Colors.green[800]
          ),
        ),
        keyboardType: TextInputType.name,
      );
  }
}