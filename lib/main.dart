import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ContactDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppPageState createState() => new _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {

  final  _searchable = [
    {'name':'Steve' ,'image':'img1.jp'},
    {'name':'Zuckerberg' ,'image':'img2.jpg'},
    {'name':'Bill' ,'image':'img3.jpg'},
    {'name':'Larry','image':'img4.jpg'},
    {'name':'Barack','image':'img5.jpg'},
  ];
  var items = [];

  @override
  void initState()
  {
    super.initState();
    items.addAll(_searchable);
  }

  @override
  Widget build(BuildContext context) {
    final title =  'Contacts' ;

    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.pink[800],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: null,),
            IconButton(
              icon: Icon(Icons.add_circle_outline, color: Colors.white),
              onPressed: null,),
          ],
          leading: Icon(Icons.arrow_circle_left_outlined),
          title: Text(title,
            style: GoogleFonts.lato(
                textStyle:  TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                )

            ),),
        ),

        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(5.0),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    prefix: Icon(Icons.search),
                    labelText: 'Search'
                ),
                onChanged: (value) {
                  filterContact(value.toLowerCase());
                },
              ),
            ),

            new Expanded(
                child: new ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return new Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                          child: GestureDetector(
                          child: new Container(
                            margin: EdgeInsets.all(9.0),
                            padding: EdgeInsets.all(6.0),
                            child: new Row(
                                children: <Widget>[
                                  new CircleAvatar(
                                    backgroundImage: AssetImage('assets/${items[index]['image']}'),
                                    backgroundColor: Colors.pink[800],
                                    foregroundColor: Colors.white,

                                  ),
                                     const Padding(padding: EdgeInsets.all(8.0)),
                                     new Text(
                                       '${items[index]['name']}',
                                        style: TextStyle(fontSize: 20.0),
                                      )

                                ]
                          ),
                            ),
                           onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ContactDetail()));
                           },
                          ),
                    );
                  },
                )
            )
    ],
        ),


      ),
    );
  }

  void filterContact(String searchTerm) {
     var tmpSearchList = [];

    tmpSearchList.addAll(_searchable);

    if (searchTerm.isNotEmpty) {

      List<Map<String, dynamic>> tmpList = <Map<String, dynamic>>[];
      tmpSearchList.forEach((element) {


        if(element['name'].toLowerCase().contains(searchTerm.trim()))
        {
          tmpList.add(element);
        }
      });

      setState(() {
        items.clear();
        items.addAll(tmpList);
      });
      return;
    }
    else {
      setState(() {
        items.clear();
        items.addAll(_searchable);
      });
    }
  }
}


