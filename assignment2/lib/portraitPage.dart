import 'package:flutter/material.dart';

class portraitPage extends StatelessWidget {
  const portraitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(

       child: Column(
         children: [

           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height*0.35,
             color: Colors.blue,
             child: Center(child:  Image(image: AssetImage('shoe.png'),
             height: 200,
             width: 300,)),
           ),
           SizedBox(
             height: 10,
           ),
           Row(
             children: [
               SizedBox(
                 width: 10,
               ),
               Text("Blue Black Nike Shoes", style: TextStyle(
                 fontSize: 17,
                 fontWeight: FontWeight.bold

               ),),
               SizedBox(
                 width: 413,
               ),
               Text("35%",style: TextStyle(
                 fontSize: 15,
                 color: Colors.green
               ),)
             ],

           ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
             child: Text("€75", style: TextStyle(

               fontSize: 15,

             ) ,),
           ),
           SizedBox(
             height: 8,
           ),
           Text(
             "AVAILABLE SIZES ",
             style: TextStyle(
               fontSize: 18,
               color: Colors.blueAccent
             ),

           ),
           SizedBox(
             height:  20,
           ),
           Row(
             children: [
               SizedBox(
                 width: 150,
               ),
ElevatedButton(onPressed: (){},
    style: ElevatedButton.styleFrom(
      primary: Colors.grey.shade200,
      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
    )
, child: Text(
      "UK7",
      style: TextStyle(
        color: Colors.blue
      ),
    )),
               SizedBox(
                 width: 30,
               ),
               ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                       primary: Colors.grey.shade200,
                       shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                   )
                   , child: Text(
                     "UK8",
                     style: TextStyle(
                         color: Colors.blue
                     ),
                   )),
               SizedBox(
                 width: 30,
               ),
               ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                       primary: Colors.grey.shade200,
                       shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                   )
                   , child: Text(
                     "UK9",
                     style: TextStyle(
                         color: Colors.blue
                     ),
                   )),
               SizedBox(
                 width: 30,
               ),
               ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                       primary: Colors.grey.shade200,
                       shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                   )
                   , child: Text(
                     "UK10",
                     style: TextStyle(
                         color: Colors.blue
                     ),
                   )),
             ],
           ),
           SizedBox(
             height: 10,
           ),
            Align(
              alignment: Alignment.center,
             child: Card(
            elevation: 10,

              shadowColor: Colors.blue,
              child:  Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, right: 5,left:5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [Icon(Icons.circle, color:Colors.blue,size: 12,),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Cash on delivery system available only through VISA, MASTERCARD"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Icon(Icons.circle, color:Colors.blue,size: 12,),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Return the shipment after 30 days from purchase"),
                        ],
                      ),
                    ],
                  ),
              ),

             ),
           ),
           SizedBox(
             height: 15,
           ),
           Column(
             children: [
               Center(
                 child: Text(
                   "Product Details",
                   style: TextStyle(
                     fontSize: 18,
                     color: Colors.blue,

                   ),
                 ),
               ),
               SizedBox(
                 height: 10,
               ),
               Row(
                 children: [
                   Icon(Icons.circle, color:Colors.blue,size: 12,),
                   SizedBox(
                     width: 5,
                   ),
                   Text(" Soft, lined straps provide a secure fit, while the herringbone texture on the footbed")
                 ],
               ),
               SizedBox(
                 height: 7,
               ),
               Row(
                 children: [
                   Icon(Icons.circle, color:Colors.blue,size: 12,),
                   SizedBox(
                     width: 5,
                   ),
                   Text("outsole add grip instead of slip.")
                 ],
               ),
               SizedBox(
                 height: 7,
               ),
               Row(
                 children: [
                   Icon(Icons.circle, color:Colors.blue,size: 12,),
                   SizedBox(
                     width: 5,
                   ),
                   Text("durability you want with a wider fit at the toes.")
                 ],
               ),
             ],
           ),
           SizedBox(
           height: 10,
           ),

           Container(
             width:90,
             child: ElevatedButton(onPressed:  (){},
                 style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)),
                 child:
             Row(
               children: [
                 Icon(
                   Icons.add,color: Colors.white,size: 10,
                 ),
                 SizedBox(
                   width: 5,
                 ),
                 Text("Add to Cart", style: TextStyle(
                   fontSize: 10
                 ),)
               ],
             )),
           ),
           SizedBox(
             height: 15,
           ),
           Row(
             children: [
               Icon(Icons.palette,
               color: Colors.blue,),
     SizedBox(
       width: 600,
     ),

     Icon(Icons.thumb_up_alt_sharp,
    color: Colors.blue,
    size: 25,
  ),

              ],
           )
         ],

       ),   
        ),
      ),
    );
  }
}
