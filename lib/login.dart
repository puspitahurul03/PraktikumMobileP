import 'package:flutter/material.dart';
import'./dashboard.dart';

void main() {
  
  runApp(HalamanLogin());
}
class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  bool visibilityPass = false;

  final String myEmail='puspitahurul03@gmail.com';
  final String myPass = '2142810';

TextEditingController cEmail = TextEditingController();
TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color.fromRGBO(63, 81, 181, 1),
        body:Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 200,left: 20),
          padding: EdgeInsets.all(20),
          width: 379, height: 537,
          decoration: BoxDecoration(
            
            color: Colors.grey.shade300,
            
          ),
        
      child: Column(
             children: [
              Container(
                width: 100, height: 100,
           alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                     Text(
                "LOGIN", 
              style: 
              TextStyle(fontSize: 20, fontFamily: 'Inter', color:Colors.grey),
              ),
              SizedBox(height: 30,),
                  TextField(
                  controller: cEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0)
                    ),
                    labelText: 'Email',
                    hintText: 'Input Email Anda',
                    prefixIcon: Icon(Icons.email)
                  ),
                  ),
           const       SizedBox(height: 10,),
                  TextField(
                    controller: cPass,
                    obscureText: !visibilityPass,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0)
                    ),
                    labelText: 'Password',
                    hintText: 'Input Password Anda',
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          visibilityPass=!visibilityPass;
                        });
                      }, 
                    icon: visibilityPass ? Icon(Icons.visibility):Icon(Icons.visibility_off)))
                    ),    
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed:(){
                  CekLogin(context);
                      } ,
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, foregroundColor: Colors.white),
                    child: Text('Login')
                    )
             ]),
                  )
             ],
          
              ),
                ),
    ),

        );
      
  
  }
  void CekLogin(BuildContext context){

    if(cEmail.text == myEmail && cPass.text==myPass){

Navigator.pushReplacement(
  context, 
  MaterialPageRoute(
    builder: (context)=> Dashboard() ,
    ));

    }else if (cEmail.text.isEmpty || cPass.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User dan Password harus diisi!'),
        backgroundColor: Colors.red,
        ),
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User dan Password anda salah!'),
        backgroundColor: Colors.red,
        ),
      );
    }
  }
}

