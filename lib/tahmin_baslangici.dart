import 'package:flutter/material.dart';
import 'package:tahmin_et/tahmin_ekrani.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tahmin Et',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Anasayfa"),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Card(
          color: Colors.black,
          elevation: 30.0,
          shadowColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Tahmin Oyunu",
                  style: TextStyle(
                      color: Colors.limeAccent,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset("resimler/hareketli.gif"),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  child: Text("Oyunu Başlat!"),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Color.fromARGB(255, 235, 11, 11),
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                    
                  ),
                  onPressed: () {
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => TahminEkrani()));
                    Navigator.of(context).push(_createRoute());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//geçiş animasyonu


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const TahminEkrani(),
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




