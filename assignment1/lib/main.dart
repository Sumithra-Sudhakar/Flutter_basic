import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
//alignment: Alignment.topCenter,
//            child: CircleAvatar(
//              backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
//              maxRadius: 80.0,
//            ),
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height:300,
                child: Center(
                  child:

                  CircleAvatar(
                    backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                    maxRadius: 80,

                  ),
                ),
              ),
              SizedBox(
                height: 72,
                width: 300,
                child: Text(
                  'Sumithra Sudhakar',
                  textAlign: TextAlign.center,
                  style:  GoogleFonts.pacifico(
                    fontSize: 30,
                    color: Colors.white70,
                  ),

                ),
              ),
              RichText(text: TextSpan(
                text: 'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              )),
              Divider(
                color: Colors.white70,
                thickness: 3.3,
                indent: 700,
                endIndent: 700,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height:50,
                width: 500,
                child: Card(

                  color: Colors.white70,
                  child: ListTile(
                      leading:Icon(Icons.phone),
                      title: Text('+911234567890')
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height:50,
                width: 500,
                child: Card(

                  color: Colors.white70,
                  child: ListTile(
                    leading:Icon(Icons.email),
                    title: Text('sumisooriya@gmail.com'),
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}