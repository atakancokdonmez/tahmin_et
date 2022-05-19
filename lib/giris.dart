import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tahmin_et/calisma_sistemi.dart';
import 'package:tahmin_et/tahmin_baslangici.dart';

class Giris extends StatefulWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/beyin.gif"),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Oyuna Başlamak İçin Başla'ya Tıkla!",
                  style: TextStyle(
                      color: Colors.limeAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Başla"),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Color.fromARGB(255, 9, 24, 236),
                onPrimary: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
              ),
              onPressed: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => TahminEkrani()));
                Navigator.of(context).push(_createRoute());
              },
            ),
            ElevatedButton(
              child: Text("Nasıl Oynanılır?"),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Color.fromARGB(255, 252, 3, 3),
                onPrimary: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
              ),
              onPressed: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => TahminEkrani()));
                Navigator.of(context).push(_createRoutee());
              },
            ),
            
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const AnaSayfa(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.2);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoutee() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const CalismaSistemi(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.2);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
