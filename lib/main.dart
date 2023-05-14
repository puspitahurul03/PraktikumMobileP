import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './login.dart';

import 'app_constant.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
name: AppConstant.firebaseName,
options: const FirebaseOptions(
  apiKey: AppConstant.firebaseApiKey, 
  appId: AppConstant.firebaseAppId, 
  messagingSenderId: "688429712467", 
  projectId: "amik-finance"
  ),
);

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
MyApp({Key ? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor : Colors.blue,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset(
              'images/keuangan.png',
              width: 330.57, 
              height:215.18 ,
              ),
            SizedBox(
              height:45,
            ),
              Text(
                "Selamat Datang Di ", 
              style: 
              TextStyle(fontSize: 32, fontFamily: 'Inter', color:Colors.white),
              ),
              Text(
                "Aplikasi Keuangan STMIK ", 
              style: 
              TextStyle(fontSize: 32, fontFamily: 'Inter', color:Colors.white),
              ),
              Text(
                "Amik Bandung ", 
              style: 
              TextStyle(fontSize: 32, fontFamily: 'Inter', color:Colors.white),
              ),
              SizedBox(
                height:40,
              ),

              Text(
                "Permudah sistem pembayaranmu dengan menggunnakan aplikasi ini ", 
              style: 
              TextStyle(fontSize: 25, fontFamily: 'Inter', color:Colors.white),
              ),
             
               SizedBox(
                height:240,
              ),
               Card(
              color: Color.fromARGB(255, 63, 201, 255),
              elevation: 5,
              child: Container(
              height: 50,
              child: InkWell(
                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  HalamanLogin(),));
                },
                splashColor: Colors.white,
                child: Center(
                  child: Text("SELENGKAPNYA ",style: TextStyle(fontSize: 20,color: Colors.white),),
                )
              )
              )
            )

              
              ],
          ),
        ),
      )
    );

  }
}
