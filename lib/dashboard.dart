import 'package:flutter/material.dart';
import 'package:amikfinance/header_drawer.dart';

void main() {
  runApp(Dashboard());
}
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key : key);

  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
       
       backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text(
"Finance",
style: TextStyle(
  color: Colors.white
),
          ),
        ) 
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
              const  MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title:  const Text("Beranda"),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.note_alt_outlined),
                title:  const Text("Tagihan Biaya"),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.payment_sharp),
                title:  const Text("Pembayaran"),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title:  const Text("History Pembayaran"),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title:  const Text("Profile"),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title:  const Text("Logout"),
                onTap: (){},
              ),

              ],)
          )
        ),
 body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue.shade100,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.home, size:70, color: Colors.blue,),
                    Text("Home",style: TextStyle(fontSize:17.0 )),
                  ],
                ),
              ),
            ),
          ),
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue.shade100,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.note_alt_outlined, size:70, color: Colors.blue,),
                    Text("Tagihan",style: TextStyle(fontSize:17.0 )),
                  ],
                ),
              ),
            ),
          ),
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue.shade100,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.payments_sharp, size:70, color: Colors.blue,),
                    Text("Pembayaran",style: TextStyle(fontSize:17.0 )),
                  ],
                ),
              ),
            ),
          ),
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue.shade100,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.history, size:70, color: Colors.blue,),
                    Text("History Pembayaran",style: TextStyle(fontSize:17.0 )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      ),
     
       
    );
  }
}
