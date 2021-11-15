import 'package:flutter/material.dart';
import 'busqueda.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tiendas',
        home: Scaffold(
          appBar: AppBar(
              title: Text('HOME')
          ),

          body: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 0),
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('image/login_tiendas.png'),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Busqueda',
                            hintText: 'Palabra clave de la busqueda'
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: () {
                        print("Presionó el botón");
                      },
                        child: Text('Buscar'),
                      ),
                    ),
                  ],
              )
          ),

        )

    );

  }
}
