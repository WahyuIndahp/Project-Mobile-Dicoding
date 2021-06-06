import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        margin: EdgeInsets.fromLTRB(20.0, 140.0, 20.0, 0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top : 15.0, bottom: 15.0),
              padding: EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                    color: Colors.green[900],
                    offset: Offset(3, 6),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 150,
              width: 350,
              child: Column(
                children: [
                  Expanded(
                    child: Text("HankTech!", style: TextStyle(fontSize: 55, fontWeight: FontWeight.w800, color: Colors.green[800]),
                    textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text("Gerai Pulsa, Paket Data, Token Listrik ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic, color: Colors.teal),
                    textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [ 
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow,
                                offset: Offset(1, 2),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: RaisedButton.icon(
                            onPressed: (){
                              Navigator.pushNamed(context, '/pulsa');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)
                              )
                            ),
                            label: Text('Pulsa',
                              style: TextStyle(color: Colors.yellow),
                            ),
                            icon: Icon(Icons.phone_iphone_rounded, color:Colors.yellow,),
                            textColor: Colors.yellow,
                            splashColor: Colors.green,
                            color: Colors.green[800],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow,
                                offset: Offset(1, 2),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: RaisedButton.icon(
                            onPressed: (){
                              Navigator.pushNamed(context, '/paket');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)
                              )
                            ),
                            label: Text('Paket Data',
                              style: TextStyle(color: Colors.yellow),
                            ),
                            icon: Icon(Icons.signal_cellular_alt_rounded, color:Colors.yellow,),
                            textColor: Colors.yellow,
                            splashColor: Colors.green,
                            color: Colors.green[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(1, 2),
                      blurRadius: 15,
                      ),
                    ],
                  ),
                  child: RaisedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/token');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)
                      )
                    ),
                    label: Text('Token Listrik',
                      style: TextStyle(color: Colors.yellow),
                    ),
                    icon: Icon(Icons.flash_on, color:Colors.yellow,),
                    textColor: Colors.yellow,
                    splashColor: Colors.green,
                    color: Colors.green[800],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 