import 'package:flutter/material.dart';

class ProviderPaket extends StatelessWidget {
  const ProviderPaket({
    Key key,
    @required this.listProvider,
    @required this.selectedProvider,
    @required this.dropDownProvider,
  }) : super(key: key);

  final List<String> listProvider;
  final String selectedProvider;
  final Function dropDownProvider;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.green[800],
      items: listProvider.map((String value){
        return DropdownMenuItem(
          value: value, 
          child: Container(
            width: 130,
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
      value: selectedProvider,
      onChanged: dropDownProvider,
    );
  }
}