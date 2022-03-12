import 'package:flutter/material.dart';
import 'package:sarahah/ui/addname/add_Name.dart';
import 'package:sarahah/ui/home/holder.dart';

import '../../game/game.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const AddName()),
                (route) => false);
          },
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "Sara7ah al-7lween",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: game.names.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Holder(text: game.names[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.refresh),
        onPressed: () {
          int i = game.getIndex();
          int j = game.getIndex();
          int n = game.names.length;
          --n;
          if (i == j) {
            j = i % n + 1;
          }
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 200,
                  color: Colors.white38,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        game.names[i] + "  ==>  " + game.names[j],
                        textScaleFactor: 1.6,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(

                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text(
                            "Again : - )",
                            textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
