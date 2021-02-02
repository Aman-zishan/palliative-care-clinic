import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palliative_care/components/urls.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;


    //Button section

    //Text widget


    // style


    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(

            width: size.width,
            height: size.height * .25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(size.height * .05),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.network(

                          'https://www.flaticon.com/svg/static/icons/svg/3555/3555500.svg',
                          placeholderBuilder: (context) => CircularProgressIndicator(),
                          fit: BoxFit.cover,


                          width: 60.0,
                        ),


                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),),
          ),

          Container(
            padding:   EdgeInsets.only(top: size.height * 0.30,left: 20,right: 20),

            child: ListView(
              //contact list
              children: [

                GestureDetector(
                  onTap: (){ urlfunc.launchURL("https://instagram.com/palliativeedathanattukara?igshid=z08tcysrb0mb");},
                  child:  Container(

                    height: 70,

                    child: Card(
                      color: Colors.white,


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Icon(FontAwesomeIcons.instagram, color: Colors.black),
                          SizedBox(width: 20,),
                          Text("Instagram", style: TextStyle(fontSize: 17,color: Colors.black),)],
                      ),),),
                ),
                GestureDetector(
                  onTap: (){ urlfunc.launchURL("https://www.facebook.com/groups/550155425193809/?ref=share"); },
                  child:  Container(

                    height: 70,
                    child: Card(
                      color: Colors.white,


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.facebook,color: Colors.black),
                          SizedBox(width: 20,),
                          Text("Facebook", style: TextStyle(fontSize: 17,color: Colors.black),)

                        ],
                      ),),),
                ),
                GestureDetector(
                  onTap: (){urlfunc.launchURL("mailto:palliativeedk@gmail.com");  },
                  child:  Container(

                    height: 70,
                    child: Card(
                      color: Colors.white,


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Icon(FontAwesomeIcons.envelope,color: Colors.black),
                          SizedBox(width: 20,),
                          Text("Email", style: TextStyle(fontSize: 17,color: Colors.black),)

                        ],
                      ),),),
                ),
                GestureDetector(
                  onTap: (){ urlfunc.launchURL("https://goo.gl/maps/BQgV1MUBK24iZKfB7"); },
                  child:  Container(

                    height: 70,
                    child: Card(
                      color: Colors.white,


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Icon(FontAwesomeIcons.map,color: Colors.black),
                          SizedBox(width: 20,),
                          Text("Location", style: TextStyle(fontSize: 17,color: Colors.black),)

                        ],
                      ),),),
                ),
              ],
            ),),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Align(
                alignment: FractionalOffset.bottomCenter,

                child:  GestureDetector(
                  onTap: (){_launchURL();},
                  child: Text("© Developed by icodex",
                    style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),),
              ),
            ),
          ),
        ],
      ),
    );




  }
  _launchURL() async {
    const url = 'https://www.instagram.com/_icodex_/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  Color color = Colors.black;




}


