import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IdPelanggan extends StatelessWidget {
  const IdPelanggan({
    Key key,
    @required this.eIdpel,
  }) : super(key: key);

  final TextEditingController eIdpel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: eIdpel,
      decoration: InputDecoration(
        labelText: "ID Pelanggan",
          labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.green[800],
          ),
        isDense: true,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}