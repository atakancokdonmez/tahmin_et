import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalismaSistemi extends StatelessWidget {
  const CalismaSistemi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Nasıl Oynanılır?"),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 160,
              child: Card(
               color: Colors.indigo,
          elevation: 20.0,
          shadowColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
          ),
          child: Text(
              "Click tuşuna bastıkdan sonra, çıkan sayfada 'Oyuna Başla' butonuna tıklayın."
              " Ardından, sistem 1 ila 100 arasında rasgele bir sayı üretecek siz de tahmininizi"
              " gerekli yere yazarak kalan hakkınıza göre sayıyı tahmin etmeye çalışacaksınız."
              " Tahmininize göre size sayıyı azalt veya yükselt uyarısı verilecek."
              " Bol şans...",
            style: TextStyle(
               color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



