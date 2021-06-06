import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoHpPembeli extends StatelessWidget {
  const NoHpPembeli({
    Key key,
    @required this.eNoHp,
  }) : super(key: key);

  final TextEditingController eNoHp;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: eNoHp,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(40.0),
        ),
        labelText: "Masukkan Nomor Telepon",
          labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold, 
          color: Colors.green[800]
        ),
      ),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^\d+\+?\d{0,3}")),],
      keyboardType: TextInputType.numberWithOptions(
        decimal: true,
        signed: false,
      ),
    );
  }
}