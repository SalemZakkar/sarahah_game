import 'package:flutter/material.dart';
import 'package:sarahah/ui/addname/add_Name.dart';

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
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      body: Container(
        width: size.width,

        height: size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: 60,

                child: const Padding(
                  padding: EdgeInsets.only(left: 40, top: 30),
                  child: Text(
                    "Welcome to sarahah",
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w300),
                    textScaleFactor: 1.8,
                  ),

                ),
              ),
              SizedBox(
                height: size.height*0.12,
              ),
              Image.asset("assets/1.png" , width: size.width*0.7,),
              SizedBox(
                height: size.height*0.06,
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: const Text("YOU LIE U DIE !!!" , textScaleFactor: 1.3 , style: TextStyle(color: Colors.purple),),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.arrow_forward_sharp),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const AddName()),
              (route) => false);
        },
      ),
    );
  }
}
