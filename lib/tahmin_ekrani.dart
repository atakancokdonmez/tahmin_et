import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tahmin_et/sonuc_ekrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tfTahmin = TextEditingController();
  int rasgeleSayi = 0;
  int kalanHak = 7;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rasgeleSayi = Random().nextInt(101);
    print("Rasgele Sayı: $rasgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bilgi: $yonlendirme",
              style: TextStyle(color: Colors.indigo, fontSize: 30),
            ),
            Text(
              "Kalan Hakkın : $kalanHak",
              style: TextStyle(color: Colors.red[900], fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahminini Yaz",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TAHMİN ETTİM!"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    //her tahmin yaptığımızda hakkımızın azalması
                    kalanHak = kalanHak - 1;
                  });

                  int tahmin = int.parse(tfTahmin.text);

                  if (tahmin == rasgeleSayi) {
                    //burdaki ekranı silerek geçiş yapar ve veri aktarır
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: true,)));
                    return;
                  }

                  if (tahmin > rasgeleSayi) {
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }

                  if (tahmin < rasgeleSayi) {
                    setState(() {
                      yonlendirme = "Tahmini Arttır";
                    });
                  }

                  if (kalanHak == 0) {
                    //başarız geçiş ve veri aktarır
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: false,)));
                  }

                  tfTahmin.text = "";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
