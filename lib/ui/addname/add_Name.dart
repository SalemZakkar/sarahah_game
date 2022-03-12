import 'package:flutter/material.dart';
import 'package:sarahah/game/game.dart';
import 'package:sarahah/ui/home/holder.dart';
import 'package:sarahah/ui/home/home.dart';

class AddName extends StatefulWidget {
  const AddName({Key? key}) : super(key: key);

  @override
  _AddNameState createState() => _AddNameState();
}

class _AddNameState extends State<AddName> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
       backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: Icon(Icons.restart_alt),
            onPressed: (){
              setState(() {
                game.names.clear();
                textEditingController.clear();
              });
            },
            tooltip: "Reset",
          ),

          centerTitle: true,
          title: const Text("Add Name" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w400),),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 80,
                width: size.width*0.9,

                child: TextField(
                  controller: textEditingController,
                  cursorColor: Colors.purple,
                  onSubmitted: (text){
                    setState(() {
                      game.names.add(textEditingController.text);
                      textEditingController.clear();

                    });
                  },
                  decoration: const InputDecoration(
                    hintText: "ex: bashar",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple
                      )
                    )
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: game.names.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context , index){
                    return Holder(text: game.names[index]);
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.gamepad),
          onPressed: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder) => Home()), (route) => false);
          },
        ),
      ),
    );
  }
}
