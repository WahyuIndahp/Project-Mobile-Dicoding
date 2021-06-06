import 'package:flutter/material.dart';

class Pulsa extends StatelessWidget {
  const Pulsa({
    Key key,
    @required this.listPulsa,
    @required this.selectedPulsa,
    @required this.dropDownPulsa,
  }) : super(key: key);

  final List<String> listPulsa;
  final String selectedPulsa;
  final Function dropDownPulsa;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.green[800],
      items: listPulsa.map((String value){
        return DropdownMenuItem(
          value: value, 
          child: Container(
            width: 110,
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
      value: selectedPulsa,
      onChanged: dropDownPulsa,
    );
  }
}