import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ContactDetail extends StatefulWidget {
  _ContactDetailPageState createState() => new _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetail> {


  @override
  void initState()
  {
    super.initState();
  }


  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.pink[800],
            actions: <Widget>[
           ],   leading: Builder(
               builder: (BuildContext context) {
                 return IconButton(
                   icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white),
                   onPressed: () {
                     Navigator.pop(context);
                   },);
               }),
            title: Text('Bill Gates',style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.white,  fontSize: 30, fontWeight:FontWeight.w600
                )
            ),),
          ),
          body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
                child: Builder(
                  builder: (context) => Form(
                      key:  _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Column(
                                  children:[
                                    Row(
                                    children:[
                                     Image(
                                    image: AssetImage('assets/img3.jpg'),
                                       width: 409.2,
                                       height: 210.0,
                                       fit: BoxFit.cover,
                                ),
                                ],
                              ),

                               // padding: EdgeInsets.only(left: 110.0),
                                    Container(
                                      color: Colors.pink[800],
                                      padding: EdgeInsets.only(top: 25.0, bottom: 25.0,left: 10.0 ),
                                      margin: EdgeInsets.only(top: 1.0),
                                      child:
                                    Row(
                                      children: [
                                        Icon(Icons.phone , color: Colors.white,),
                                        SizedBox(width: 10.0,),
                                        Icon(Icons.chat , color: Colors.white,),
                                        SizedBox(width: 20.0,),
                                        Text("(877)412-7753",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25.0 ,color: Colors.white))


                                      ],
                                    ),
                                    ),
                                    Container(
                                      color: Colors.pink[900],
                                      padding: EdgeInsets.only(top: 25.0, bottom: 25.0, left: 10.0),
                                      child:
                                      Row(
                                        children: [
                                          Icon(Icons.phone , color: Colors.white,),
                                          SizedBox(width: 10.0,),
                                          Icon(Icons.chat , color: Colors.white,),
                                          SizedBox(width: 20.0,),
                                          Text("(408) 974-2042",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25.0 ,color: Colors.white))


                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink[800],
                                      padding: EdgeInsets.only(top: 25.0, bottom: 25.0 ,left: 10.0),
                                      child:
                                      Row(
                                        children: [
                                          Icon(Icons.email, color: Colors.white,),
                                          SizedBox(width: 45.0,),
                                          Text("Gates@microsoft.ru",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25.0 ,color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink[900],
                                      padding: EdgeInsets.only(top: 25.0, bottom: 25.0 ,left: 10.0),
                                      child:
                                      Row(
                                        children: [
                                          Icon(Icons.language_outlined, color: Colors.white,),
                                          SizedBox(width: 45.0,),
                                          Text("Microsoft.ru",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25.0 ,color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink[800],
                                      padding: EdgeInsets.only(top: 25.0, bottom: 25.0 ,left: 10.0),
                                      child:
                                      Row(
                                        children: [
                                          Icon(Icons.email_outlined, color: Colors.white,),
                                          SizedBox(width: 45.0,),
                                          Text("Bill_Gates",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25.0 ,color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),








                        ],
                      )
                  ),
                ),
              )

          )
      ),
    );
  }

}