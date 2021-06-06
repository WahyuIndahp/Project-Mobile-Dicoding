import 'package:flutter/material.dart';
import 'package:project_dicoding/Paket/bayarPaket.dart';
import 'package:project_dicoding/Paket/dropDownPaket.dart';
import 'package:project_dicoding/Paket/dropDownProvider.dart';
import 'package:project_dicoding/Paket/inputnamaPaket.dart';
import 'package:project_dicoding/Paket/noHpPembeli.dart';
import 'package:project_dicoding/Paket/riwayatBeliPaket.dart';

class MenuPaket extends StatefulWidget {
  @override
  _PaketState createState() => _PaketState();
}

class _PaketState extends State<MenuPaket> {

  TextEditingController eNama = new TextEditingController();
  TextEditingController eNoHp = new TextEditingController();
  
  String selectedProvider = "Indosat";
  String selectedPaket = "5GB";
  
  String nama;
  String noHp;
  int paket=0;
  int total=0;
  
  var listProvider=["Indosat", "Telkomsel", "XL", "AXIS", "by U"];
  var listPaket=["2GB","5GB", "10GB", "30GB", "50GB", "100GB"];
  
  List<String> listBeli = [];

  totalBayar(){
    setState(() {
      nama = eNama.text;
      noHp = eNoHp.text;

      if(selectedPaket == "2GB")
        paket = 18000; 
      else if(selectedPaket == "5GB")
        paket = 25000;
      else if(selectedPaket == "10GB")
        paket = 50000; 
      else if(selectedPaket == "30GB")
        paket = 65000;
      else if(selectedPaket == "50GB")
        paket = 100000;
      else if(selectedPaket == "100GB")
        paket = 150000;
 
      if(selectedProvider == "Indosat")
        total = paket + 3000; 
      else if(selectedProvider == "Telkomsel")
        total = paket + 5000;
      else if(selectedProvider == "XL")
        total = paket + 4000;
      else if(selectedProvider == "AXIS")
        total = paket + 5000; 
      else if(selectedProvider == "by U")
        total = paket + 3000;
        
      listBeli.add(
        "------------------------------------" + "\n"
        "Nama Pembeli \n ~> $nama" + "\n"
        "Nomor Telepon \n ~> $noHp" + "\n"
        "Provider \n ~> $selectedProvider" + "\n"
        "Paket Data \n ~> $selectedPaket" + "\n"
        "------------------------------------"
        "Total Bayar : $total" 
        );
    });
  }
  dropDownPaket(String valuepaket){
    setState(() {
      selectedPaket= valuepaket;
    });
  }
  dropDownProvider(String value){
    setState(() {
      selectedProvider = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      // untuk menghilangkan banner build sebelah kanan atas
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('Menu Paket Data',
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
                  child: NoHpPaket(eNoHp: eNoHp),
                ),
                Padding(padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: PaketData(listPaket: listPaket, selectedPaket: selectedPaket, dropDownPaket: dropDownPaket),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child:ProviderPaket(listProvider: listProvider, selectedProvider: selectedProvider, dropDownProvider: dropDownProvider),
                   )
                ],
              ),
            ),
            BayarPaket(tombolbayar: totalBayar),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                "Riwayat Pembelian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
              ),
            ),
            Expanded(
              child: RiwayatBeliPaket(listBeli: listBeli),
              ),
            ],
          ),
        ),
      ),
    );
  }
}













