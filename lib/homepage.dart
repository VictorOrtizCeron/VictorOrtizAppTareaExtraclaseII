import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //lee lo que se escribe en el textfield1
  final _textController1 = TextEditingController();
  //lee lo que se escribe en el textfield2
  final _textController2 = TextEditingController();

  String stringConcatenado = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //display

            Expanded(
              child: Container(
                child: Center(
                  child: Text(stringConcatenado,style: TextStyle(fontSize: 35)),
                ),
              ),
            ),

            //textfields
            TextField(
              controller: _textController1,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'String #1',
                suffixIcon: IconButton(
                    onPressed: () {
                      //borra cuando se presiona la x
                      _textController1.clear();
                    },
                    icon: const Icon(Icons.clear)),
              ),
            ),
            TextField(
              controller: _textController2,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'String #2',
                suffixIcon: IconButton(
                    onPressed: () {
                      //borra cuando se presiona la x
                      _textController2.clear();
                    },
                    icon: const Icon(Icons.clear)),
              ),
            ),
            //boton
            MaterialButton(
              onPressed: () {
                setState(() {
                   stringConcatenado =
                    _textController1.text + _textController2.text;
                });
               
              },
              color: Colors.blue,
              child: const Text('Concatenar',
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
