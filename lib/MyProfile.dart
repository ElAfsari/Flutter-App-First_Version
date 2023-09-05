import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/main.dart';

class MyProfile extends StatefulWidget{
  const MyProfile ({Key? key}) : super(key: key);
@override
// ignore: library_private_types_in_public_api
_MyProfileState createState() => _MyProfileState();
}
class _MyProfileState extends State<MyProfile>{
final double coverHeight= 280;
final double profileHeight = 144;
  
  @override
  Widget build(BuildContext context){
    final top= coverHeight - profileHeight / 2;
    return Scaffold(
      body: Column(
        children: [
           Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildCoverImage(),
          Positioned(top: top,
          child:
          buildProfileImage(),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const MyHomePage(title: '',)),
                 );
              },
                 style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 243, 30, 23)), // Set the background color
       ),
                child: const Text('Home', style: TextStyle(color: Colors.white)),
                
          ),  
       ], 
        
      ) 
    
    ],
   ), 
 );
    
}
  
 Widget buildCoverImage() =>  Container(
  color: Colors.grey,
  width: double.infinity,
  height: coverHeight,
  child: Image.asset('images/spring.jpg', fit: BoxFit.cover,),
  //fit: BoxFit.cover,
 );
 Widget buildProfileImage() => CircleAvatar(
  radius: profileHeight / 2,
  backgroundImage: AssetImage('images/disability.jpg')
 );
 
}
  