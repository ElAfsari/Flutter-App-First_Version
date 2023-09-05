import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyProfile.dart';
import 'package:flutter_application_2/RetrievePassword.dart';
import 'package:flutter_application_2/SignUp.dart';

class LoginPage extends StatefulWidget{
  const LoginPage ({Key? key}) : super(key: key);
@override
// ignore: library_private_types_in_public_api
_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  
  bool _showPassword = false; // Track the state of the "show password" checkbox

  @override
  Widget build(BuildContext context){
   
      return Container(   
        
        child: Scaffold(         
          body: Stack(
            children: [
              Image.asset('images/Wallpaper.png',
              fit: BoxFit.cover,
               height: double.infinity,
                width: double.infinity,
                ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.25, right: 35, left: 35),
                child: Column(
                  children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 227, 227, 227),
                      filled: true,
                      labelText: 'Email',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)) 
                        ),
                     ),
                     const SizedBox( height: 25,),
                  TextField(
                    obscureText: true,
                      decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 227, 227, 227),
                      filled: true,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)) 
                        ),
                  ),
                 const SizedBox(
                  height: 15,
                 ),
                   Row (
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                    const Text('Show Password'
                    , style: TextStyle(
                      color: Color.fromARGB(197, 43, 43, 44),
                      fontSize:10, fontWeight: FontWeight.w400),
                    ), 
                        Checkbox(
                          value: _showPassword,
                          onChanged: (newValue) {
                         setState(() {
                  _showPassword = newValue ?? false; // Update the state of the checkbox
                      },
                     );
                   }
                 ),
               //  obscureText: !_showPassword, // Hide/show the password
                   const SizedBox(width: 250,),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(197, 10, 29, 127),
                      child: IconButton(
                         color: Colors.white,
                         onPressed:() {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MyProfile()),
                            );
                         },
                         icon: const Icon(Icons.arrow_forward),
                        ),
                    )
                   ],
                  ),
                  const SizedBox(
                      height: 70,
                    ),
                  Column(
                    children: [
                        ElevatedButton(
                        onPressed: (){ 
                          Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const SignUp()),
                 );
                        },
                child: const Text('SignUp'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                     ElevatedButton(
                        onPressed: (){ 
                          Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const RetrievePassword()),
                 );
                        },
                       child: const Text('Forget Password'),
                    ),
                    ],
                  ),
                ]
                ),
          )
          ]
            ),
             
          )        
          );
      } 
    }
    void initState() {
  }
  

        
