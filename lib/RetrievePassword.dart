import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class RetrievePassword extends StatefulWidget{
  const RetrievePassword ({Key? key}) : super(key: key);
@override
_RetrievePasswordState createState() => _RetrievePasswordState();

}

class _RetrievePasswordState extends State<RetrievePassword>{

  @override
  Widget build(BuildContext context){
      return Container(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.45, right: 35, left: 35),
                child: Column(
                  children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(102, 215, 214, 214),
                      filled: true,
                      labelText: 'Enter Your Phone Number',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)) 
                        ),
                        keyboardType: TextInputType.number,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Allow only digits
                     ),
                     SizedBox(height: 30,),
                   Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(197, 7, 208, 108),
                      child: IconButton(
                         color: Color.fromARGB(255, 249, 249, 248),
                         onPressed:() {
                          final snackBar = SnackBar(
                          content: Text('The new password has been sent to you by SMS!'),
                          duration: Duration(seconds: 5),
                        );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
                         },
                         icon: Icon(Icons.arrow_forward),
                        ),
                    )
                   ],
                  ),
                ]
                ),
              ),
            ],
          ),
        ),
       );
      } 
    }

        
