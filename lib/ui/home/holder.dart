import 'package:flutter/material.dart';

class Holder extends StatelessWidget {
  final String text;
  const Holder({Key? key , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 120,
      alignment: Alignment.center,
      child: Container(
        width: size.width*0.9,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
             BoxShadow(
              color: Colors.purple,
              blurRadius: 5,
              spreadRadius: 3
            )
          ]
        ),
        alignment: Alignment.center,
        child: Text(text , style: TextStyle(color: Colors.black , ),textScaleFactor: 1.3,),
      ),
    );
  }
}
