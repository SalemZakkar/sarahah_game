import 'package:flutter/material.dart';
import 'package:sarahah/ui/addname/add_Name.dart';
import 'package:sarahah/ui/home/home.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Container(
             width: size.width,
             height: 200,
             child: Padding(
               padding: EdgeInsets.only(left: 40 ,top: 50),
               child:        const Text("Welcome to sarahah" , style: TextStyle(color: Colors.purple , fontWeight: FontWeight.w300 ),textScaleFactor: 1.8,),

             ),
           )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.arrow_forward_sharp),
        onPressed: (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const AddName()), (route) => false);
        },
      ),
    );
  }
}
