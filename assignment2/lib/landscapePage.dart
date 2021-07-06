import 'package:flutter/material.dart';

class landscapePage extends StatelessWidget {
  const landscapePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
          width: MediaQuery.of(context).size.width*0.45,
          height: MediaQuery.of(context).size.height*0.85,
          color: Colors.blue,
          child: Center(child:  Image(image: AssetImage('shoe.png'),
            height: 300,
            width: 300,)),
        ),

                ],

              ),
              Column(

                children: [
                  Row(
                    children: [
                      Text("Blue Black Nike Shoes", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold

                      ),),
                      SizedBox(
                        width:  MediaQuery.of(context).size.width*0.35,
                      ),
                      Text("€75",style: TextStyle(
                          fontSize: 15,
                          color: Colors.green
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child:
                    Text(
                      "AVAILABLE SIZES ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueAccent
                      ),

                    ),

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(
                      children: [
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
                  ),
                  SizedBox(
                    height:MediaQuery.of(context).size.height*0.05,
                  ),
                  Card(
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
                  SizedBox(
                    height: 20,
                  ),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

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
                        height: 10,
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
                        height: 10,
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
                    height: 180,
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
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 400,
                      ),
                      Align(

                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.palette,
                              color: Colors.blue,),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.thumb_up_alt_sharp,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ],
                  ),
                ],

              ),

            ],
          ),

        ),

      ),
    );
  }
}
