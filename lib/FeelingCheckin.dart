import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';


class FeelingCheckin extends StatefulWidget{
  const FeelingCheckin ({Key? key}) : super(key: key);
@override
_FeelingCheckinState createState() => _FeelingCheckinState();

}

class _FeelingCheckinState extends State<FeelingCheckin>{

  @override
  Widget build(BuildContext context){
    return Container(
    child: 
      Scaffold(
          body: 
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How Are You?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

        const Divider(
            height: 50,
            thickness: 1,
            indent: 30,
            endIndent: 30,
           ),         
            ElevatedButton(
              onPressed: (){ },
                child: const Text('Very Good:)', style: TextStyle(color: Color.fromARGB(255, 20, 12, 12))),
                ),
          const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){ },
                child: const Text('Not Good, Not Bad', style: TextStyle(color: Color.fromARGB(255, 20, 12, 12))),
                ),
         const  SizedBox(height: 20,),
           ElevatedButton(
              onPressed: (){ },
                child: const Text('I am anxious', style: TextStyle(color: Color.fromARGB(255, 20, 12, 12))),
                ),
       const  SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){
                 Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const MyHomePage(title: '',)),
                 );
                 },
                  style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 225, 80, 75)),
                  ),
                child: const Text('Go Back!', style: TextStyle(color: Colors.white)),
                ),

          ],
        ),
      ),
        backgroundColor: Color.fromARGB(255, 169, 184, 222),

      )
    );
  }
}

mixin current {
}

mixin appState {
  // ignore: prefer_typing_uninitialized_variables
  static var current;
}

  

        

   
  

        
