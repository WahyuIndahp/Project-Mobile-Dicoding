import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NominalPulsa extends StatelessWidget {
  const NominalPulsa({
    Key key,
    @required this.ePulsa,
  }) : super(key: key);

  final TextEditingController ePulsa;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: ePulsa,
      decoration: InputDecoration(
        labelText: "Nominal Pulsa",
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