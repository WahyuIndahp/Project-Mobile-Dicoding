import 'package:flutter/material.dart';

class RiwayatBeliPaket extends StatelessWidget {
  const RiwayatBeliPaket({
    Key key,
    @required this.listBeli,
  }) : super(key: key);

  final List<String> listBeli;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: listBeli.map((String value){
          return Card(
            color: Colors.yellow,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    value,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[800]),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}