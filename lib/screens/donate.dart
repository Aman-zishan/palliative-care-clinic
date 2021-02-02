import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palliative_care/components/urls.dart';

class DonateTestScreen extends StatefulWidget {
  @override
  _DonateTestScreenState createState() => _DonateTestScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _DonateTestScreenState extends State<DonateTestScreen> {
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

                            'https://www.flaticon.com/svg/static/icons/svg/3555/3555601.svg',
                            placeholderBuilder: (context) => CircularProgressIndicator(),
                            fit: BoxFit.cover,


                           width: size.width * 0.15,
                         ),


                        SizedBox(
                          width: size.width * 0.020,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Donate',
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
   Padding(padding: EdgeInsets.only(top: size.height * 0.30),

     child: Align(
       alignment: Alignment.topCenter,
       child:Text("Account details and payment", style: new TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),),
          Padding(padding: EdgeInsets.only(top: size.height * 0.40,left: 20),

            child: Align(
              alignment: Alignment.centerLeft,
              child:Column(children: [Text("Name : Pain and Palliative Care Society\nAccount number : 40689101109900\nBranch : Alanallur\nBank : Kerala Gramin Bank \nIFSC code : KLGB0040689", style: new TextStyle(fontSize: 17,fontWeight: FontWeight.normal),)],),),),

          Container(
            padding:   EdgeInsets.only(top: size.height * 0.55,left: 20,right: 20),

            child: ListView(
              //contact list
              children: [

                GestureDetector(
                  onTap: (){ urlfunc.launchURL("https://gpay.app.goo.gl/pay-YMzF4A4G8Zc"); },
                  child:  Container(

                    height: size.height * 0.10,

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
                        Image.asset("assets/images/gpay.png",height: 30,)],
                              ),),),
                ),
                GestureDetector(
                  onTap: (){  },
                  child:  Container(

                    height: size.height * 0.12,
                    child: Card(
                      color: Colors.white,


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Column(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/images/paytm.png",height: size.height * 0.05,),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0,bottom: 5.0),
                            child: Text("UPI ID : 8304016621@paytm ", style: TextStyle(color: Colors.black),),
                          ),
                         ],
                      ),),),
                ),
                GestureDetector(
                  onTap: (){  },
                  child:  Container(

                    height: size.height * 0.12,
                    child: Card(
                      color: Colors.white,


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Image.asset("assets/images/phonepe.png",height: size.height * 0.07,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text("UPI ID : 8304016621@ybl ",style: TextStyle(color: Colors.black),),
                        ),
                        ],
                      ),),),
                ),

                ],
            ),),

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


