import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SonucEkrani extends StatefulWidget {
  
  late bool sonuc;
  SonucEkrani({required this.sonuc});


  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //true false için veri transferinden sonra
            widget.sonuc ? Image.asset("resimler/mutlu_resim.png")  : Image.asset("resimler/uzgun_resim.png"),
            Spacer(),
            Text(
              widget.sonuc ? "Kazandınız :))" : "Kaybettiniz :((",
              style: TextStyle(color: Colors.black, fontSize: 36,fontWeight: FontWeight.bold),
            ),
            Spacer(),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Tekrar Oyna!"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  //ana sayfaya gidecek
                  Navigator.pop(context);
                },
              ),

            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
