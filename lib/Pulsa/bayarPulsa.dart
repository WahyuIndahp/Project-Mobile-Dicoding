import 'package:flutter/material.dart';
class BayarPulsa extends StatelessWidget {
  const BayarPulsa({
    Key key,
    @required this.tombolbayar
  }) : super(key: key);

  final Function tombolbayar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      child: RaisedButton.icon(
        onPressed: tombolbayar,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          )
        ),
        label: Text('Total Bayar',
        style: TextStyle(color: Colors.yellow),
        ), 
        icon: Icon(Icons.monetization_on_rounded, color:Colors.yellow,),
        textColor: Colors.yellow,
        splashColor: Colors.green,
        color: Colors.green[800],
      ),
    );
  }
}