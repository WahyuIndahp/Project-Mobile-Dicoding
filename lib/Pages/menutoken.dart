import 'package:flutter/material.dart';
import 'package:project_dicoding/Token/bayartoken.dart';
import 'package:project_dicoding/Token/dropdownHarga.dart';
import 'package:project_dicoding/Token/idpelanggan.dart';
import 'package:project_dicoding/Token/inputnamaToken.dart';
import 'package:project_dicoding/Token/nomorHpPembeli.dart';
import 'package:project_dicoding/Token/riwayatBeliToken.dart';

class MenuToken extends StatefulWidget {
  @override
  _TokenState createState() => _TokenState();
}

class _TokenState extends State<MenuToken> {
  
  TextEditingController eNama = new TextEditingController();
  TextEditingController eNoHp = new TextEditingController();
  TextEditingController eIdpel = new TextEditingController();
  
  String selectedHarga = "20.000";
  
  String nama;
  String idPel;
  String noHp;
  int total=0;
  
  var listHarga=["20.000", "50.000", "100.000", "200.000","500.000"];
  
  List<String> listBeli = [];

  totalBayar(){
    setState(() {
      nama = eNama.text;
      noHp = eNoHp.text;
      idPel = eIdpel.text;
 
      if(selectedHarga == "20.000")
        total = 25000;  
      else if(selectedHarga == "50.000")
        total = 54000; 
      else if(selectedHarga == "100.000")
        total = 105000;
      else if(selectedHarga == "200.000")
        total = 203000;
      else if(selectedHarga == "500.000")
        total = 502000;
      listBeli.add(
        "------------------------------------" + "\n"
        "Nama Pembeli \n ~> $nama" + "\n"
        "Nomor Telepon \n ~> $noHp" + "\n"
        "No. Meter/ID Pel \n ~> $idPel" + "\n" +
        "------------------------------------"
        "Total Bayar : $total" 
        );
    });
  }

  dropDownHarga(String value){
    setState(() {
      selectedHarga = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('Menu Token',
          style: TextStyle(
            color: Colors.yellow, 
            fontSize: 25,
            fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green[800],
          leading: IconButton(icon : Icon(Icons.arrow_back_rounded, color: Colors.yellow[400], size: 35,),
          onPressed: (){
            Navigator.pop(context);
          },
          ),
        ),
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Selamat Datang",
                style: TextStyle(
                  fontSize: 25, 
                  color: Colors.yellowAccent, 
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: NamaPembeli(eNama: eNama),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: NoHpPembeli(eNoHp: eNoHp),
                ),
                Padding(padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: IdPelanggan(eIdpel: eIdpel),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child:HargaToken(listHarga: listHarga, selectedHarga: selectedHarga, dropDownHarga: dropDownHarga), 
                   )
                ],
              ),
            ),
            BayarToken(tombolbayar: totalBayar),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                "Riwayat Pembelian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
              ),
            ),
            Expanded(
              child: RiwayatBeliToken(listBeli: listBeli),
              ),
            ],
          ),
        ),
      ),
    );
  }
}













