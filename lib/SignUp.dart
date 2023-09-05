import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyProfile.dart';
import 'package:flutter_application_2/main.dart';


class SignUp extends StatefulWidget{
  const SignUp ({Key? key}) : super(key: key);
@override
_SignUpState createState() => _SignUpState();

}
class _SignUpState extends State<SignUp>{
    bool _showPassword = false; // Track the state of the "show password" checkbox
   var title;
  @override
  Widget build(BuildContext context){
    
    return Container(
      child: 
      Scaffold(
         body: Stack(
          children: [
            Image.asset('images/Wallpaper.png',
              fit: BoxFit.cover,
               height: double.infinity,
                width: double.infinity,
                ),
              Container(
                width: double.infinity, // Set the width to full width of the screen
                color: const Color.fromARGB(255, 171, 240, 181), // Background color of the box
              padding: const EdgeInsets.all(16.0), // Padding around the content
            child: const Text(
          'Believe in your Ability:)', 
          style: TextStyle(
            fontSize: 20.0, 
            color: Color.fromRGBO(0, 1, 1, 1), 
            fontWeight: FontWeight.bold, // Font weight 
              ),
              textAlign: TextAlign.center, // Align text to the center of the box
        ),
        ),
      const SizedBox(height: 50,),
        Container(
          padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.25, right: 35, left: 35),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 227, 227, 227),
                      filled: true,
                      labelText: 'Enter your Fullname',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)) 
                        ),
                    ),
                  const SizedBox(height: 30,),
                     TextField(decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 227, 227, 227),
                      filled: true,
                      labelText: 'Enter your Email',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)) 
                        ),
                    ),
                    const SizedBox(height: 30,),

                     TextField(decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 227, 227, 227),
                      filled: true,
                      labelText: 'Enter your Password',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)) 
                        ),
                    ),
                    Row(
                   //   mainAxisAlignment: MainAxisAlignment.center ,
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
              ]
                ),
                    const SizedBox(height: 20,),

                     TextField(decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 227, 227, 227),
                      filled: true,
                      labelText: 'Confirm your password',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)) 
                        ),
                    ),
                    const SizedBox(height: 20,),
                     Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(197, 240, 31, 31),
                      child: IconButton(
                        color: Colors.white,
                            onPressed:() {
                               Navigator.push(
                                  context,
                           MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Welcome Dear',)),
                            );
                            }, 
                          icon: const Icon(Icons.arrow_back),
                       ),
                    ),
                     
                  const SizedBox(width: 200,),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(197, 7, 208, 108),
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
                    ),
                  ],
               ),         
          
            ], 
            ),
         )
         ],
         ),
      ),
      
    );
  } 
}
  
  

        
