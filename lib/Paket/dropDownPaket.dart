import 'package:flutter/material.dart';

class PaketData extends StatelessWidget {
  const PaketData({
    Key key,
    @required this.listPaket,
    @required this.selectedPaket,
    @required this.dropDownPaket,
  }) : super(key: key);

  final List<String> listPaket;
  final String selectedPaket;
  final Function dropDownPaket;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.green[800],
      items: listPaket.map((String value){
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
              style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ),
          );
      }).toList(),
      value: selectedPaket,
      onChanged: dropDownPaket,
    );
  }
}