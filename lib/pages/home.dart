import 'package:flutter/material.dart';
import 'package:responsi/pages/terbaru.dart';
import 'package:responsi/pages/nasional.dart';
import 'package:responsi/pages/olahraga.dart';
import 'package:responsi/pages/teknologi.dart';

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TerbaruPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: Text('Terbaru'),
                    ),
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NasionalPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: Text('Nasional'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OlahragaPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: Text('Olahraga'),
                    ),
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeknologiPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: Text('Teknologi'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
