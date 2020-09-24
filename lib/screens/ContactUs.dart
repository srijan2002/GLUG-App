import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:glug_app/screens/webpage.dart';
import 'package:glug_app/widgets/drawer_items.dart';

class ContactUs extends StatelessWidget {



  Widget _tile(String name,String number,String email){
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Card(
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),

                Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.deepOrangeAccent,
                    ),

                    SizedBox(width: 8,),
                    Text(
                      number
                    )
                  ],
                ),

                SizedBox(height: 8,),

                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.deepOrangeAccent,
                    ),

                    SizedBox(width: 5,),
                    Text(
                        email
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Contact Us")
      ),
      drawer: Drawer(
        child: DrawerItems(),
      ), body:
        ListView(
          children:<Widget> [

            _tile("Liman Rahman (President)","+91 9475522304","president@nitdgplug.org"),
            _tile("Akshat Jain (General Secretary)","+91 8004937056","gs@nitdgplug.org"),
            _tile("Ayush Shukla (Treasurer)","+91 8001507060","treasurer@nitdgplug.org"),
            _tile("Archana Choudhary (Convener)","+91 7044791608","convenor@nitdgplug.org"),

          ],
        )

    );
  }

}

