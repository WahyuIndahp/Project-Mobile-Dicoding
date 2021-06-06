import 'package:flutter/material.dart';
import 'package:project_dicoding/Pulsa/bayarPulsa.dart';
import 'package:project_dicoding/Pulsa/dropDownPulsa.dart';
import 'package:project_dicoding/Pulsa/dropdownProvider.dart';
import 'package:project_dicoding/Pulsa/inputnamaPulsa.dart';
import 'package:project_dicoding/Pulsa/nomorHpPulsa.dart';
import 'package:project_dicoding/Pulsa/riwayatBeliPulsa.dart';

class MenuPulsa extends StatefulWidget {
  @override
  _PulsaState createState() => _PulsaState();
}

class _PulsaState extends State<MenuPulsa> {
  
  TextEditingController eNama = new TextEditingController();
  TextEditingController eNoHp = new TextEditingController();

  String selectedProvider = "Indosat";
  String selectedPulsa = "10.000";

  String nama;
  String noHp;
  int pulsa=0;
  int total=0;
  
  var listProvider=["Indosat", "Telkomsel", "XL", "AXIS"];
  var listPulsa=["10.000", "20.000", "30.000", "50.000", "100.000"];

  List<String> listBeli = [];

  totalBayar(){
    setState(() {
      nama = eNama.text;
      noHp = eNoHp.text;

      if(selectedPulsa == "10.000")
        pulsa = 10000; 
      else if(selectedPulsa == "20.000")
        pulsa = 20000;
      else if(selectedPulsa == "30.000")
        pulsa = 30000;
      else if(selectedPulsa == "50.000")
        pulsa = 50000;
      else if(selectedPulsa == "100.000")
        pulsa = 100000;

      if(selectedProvider == "Indosat")
        total = pulsa + 3000;
      else if(selectedProvider == "Telkomsel")
        total = pulsa + 4000;
      else if(selectedProvider == "XL")
        total = pulsa + 2000;
      else if(selectedProvider == "AXIS")
        total = pulsa + 1000;
      listBeli.add(
        "------------------------------------" + "\n"
        "Nama Pembeli \n ~> $nama" + "\n"
        "Nomor Telepon \n ~> $noHp" + "\n"
        "Provider \n ~> $selectedProvider" + "\n"
        "Pulsa \n ~> $selectedPulsa" + "\n"
        "------------------------------------"
        "Total Bayar : $total" 
        );
    });
  }
  dropDownProvider(String value){
    setState(() {
      selectedProvider = value;
    });
  }
  dropDownPulsa(String pulsa){
    setState(() {
      selectedPulsa = pulsa;
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
          title: Text('Menu Pulsa',
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
                  child: NoHpPulsa(eNoHp: eNoHp),
                ),
                Padding(padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: Pulsa(listPulsa: listPulsa, selectedPulsa: selectedPulsa, dropDownPulsa: dropDownPulsa),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child:ProviderPulsa(listProvider: listProvider, selectedProvider: selectedProvider, dropDownProvider: dropDownProvider), 
                   )
                ],
              ),
            ),
            BayarPulsa(tombolbayar: totalBayar),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                "Riwayat Pembelian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
              ),
            ),
            Expanded(
              child: RiwayatBeliPulsa(listBeli: listBeli),
              ),
            ],
          ),
        ),
      ),
    );
  }
}













