import 'package:flutter/material.dart';

class HargaToken extends StatelessWidget {
  const HargaToken({
    Key key,
    @required this.listHarga,
    @required this.selectedHarga,
    @required this.dropDownHarga,
  }) : super(key: key);

  final List<String> listHarga;
  final String selectedHarga;
  final Function dropDownHarga;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.green[800],
      items: listHarga.map((String value){
        return DropdownMenuItem(
          value: value, 
          child: Container(
            width: 100,
            padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.green[600],
              border: Border.all(),
              ),
            child: Text(value,
              style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold),
              ),
          ),
          );
      }).toList(),
      value: selectedHarga,
      onChanged: dropDownHarga,
    );
  }
}