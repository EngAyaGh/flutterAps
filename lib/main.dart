import 'package:flutter/material.dart';
import 'auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('aya'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: TextFormField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty ) {
                        return "please ";
                      }
                    },
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: 'Enter user Name',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue, style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            style: BorderStyle.solid,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('welcome to flutter'),
                      ));
                    },
                    child: Text('login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
