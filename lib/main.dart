import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyProfile.dart';
import 'package:flutter_application_2/SignUp.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/FeelingCheckin.dart';

void main() {
  runApp(const MyApp());
  
  {'login'; (context) => const LoginPage();}
  {'signup'; (context) => const SignUp();}
  {'MyProfile'; (context) => const MyProfile();}
  {'FeelingCheckin'; (context) => const FeelingCheckin();}
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'My First App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 35, 7, 193)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome Dear'),              
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  
       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       backgroundColor: const Color.fromARGB(255, 134, 141, 228),
      
        title: Text(widget.title),
      ),
      body: 
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'I Choose Not to Place\n "Dis" in My Abilities', 
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),
            ),
            const SizedBox(height: 50,),

       //     return Image(image: AssetImage ('disability.jpg') );// Use the image
        Container(
          child: Image.asset('images/disability.jpg'),
          
          width: 100,
          height: 100,
          
        ) , 
        const SizedBox(height: 30,) ,     
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const LoginPage()),
                 );
              },
                child: const Text('Login'),
                ),
           const Divider(
            height: 50,
            thickness: 1,
            indent: 30,
            endIndent: 30,
           ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const SignUp()),
                 );
                 },
                child: const Text('SignUp'),
                ),
                 const Divider(
            height: 50,
            thickness: 1,
            indent: 30,
            endIndent: 30,
           ),
           ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const MyProfile()),
                 );
                 },
                child: const Text('My Account'),
                ),
           const Divider(
            height: 50,
            thickness: 1,
            indent: 30,
            endIndent: 30,
           ),
            ElevatedButton(
              onPressed: (){
                 Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const FeelingCheckin()),
                 );
                 },
                child: const Text('How do you feel!?'),
                ),

          ],
        ),
      ),
        backgroundColor: const Color.fromARGB(255, 172, 173, 236),

       floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

mixin current {
}

mixin appState {
  // ignore: prefer_typing_uninitialized_variables
  static var current;
}
