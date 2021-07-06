import 'package:flutter/material.dart';
import 'portraitPage.dart';
import 'landscapePage.dart';
void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           elevation:8,
           automaticallyImplyLeading: false,
           backgroundColor: Colors.blueAccent,
           flexibleSpace: SafeArea(
             child: Container(
               padding:EdgeInsets.only(right:16),
               child: Row(
                   children: <Widget>[
                     IconButton(
                       onPressed: (){
                         Navigator.pop(context);
                       },
                       icon: Icon(Icons.arrow_back,color: Colors.white,),
                     ),
                     SizedBox(width: 5,),
                     Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Nike",style: TextStyle(fontSize: 17,color: Colors.white),)
                         ],
                       ),
                     ),
                     Icon(Icons.add_shopping_cart, color: Colors.white,)
                   ]),
             ),
           ),
         ),
       body: myHomePage(),),
     );
   }
 }

 class myHomePage extends StatelessWidget {
   const myHomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  MediaQuery.of(context).orientation==Orientation.portrait?portraitPage():landscapePage();
   }
 }

