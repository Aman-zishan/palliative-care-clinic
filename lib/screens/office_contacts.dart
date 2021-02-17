import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palliative_care/models_provider/theme_provider.dart';
import 'package:provider/provider.dart';



class OfficeScreen extends StatefulWidget {
  @override
  _OfficeScreenState createState() => _OfficeScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _OfficeScreenState extends State<OfficeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    // to get size
    var size = MediaQuery.of(context).size;
//Copyright widget

    Widget copyright = Container(
      padding: const EdgeInsets.only(top: 15,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){_launchURL();},
            child:
          Text("© Developed by icodex",
            style: new TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
          ),),
        ],),
    );
    //Button section

    //Text widget


    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 18,
        fontWeight: FontWeight.w600,
      color: themeProvider.themeMode().textColor,
    );

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

                            'https://www.flaticon.com/svg/static/icons/svg/3555/3555418.svg',
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
                              'Office Contacts',
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
              ),
            ),
          ),
          Container(
            padding:   EdgeInsets.only(top: size.height* 0.30,left: 20,right: 20),

            child: ListView(
              //contact list
              children: [
                GestureDetector(
                  onTap: (){ launch("tel://9447841266");  },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Secretary',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9447841266", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){ launch("tel://949781083"); },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Chairman',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 949781083", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){launch("tel://9495397848");   },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Treasurer',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9495397848", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  launch("tel://9656101420"); },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ambulance',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9656101420", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){launch("tel://9447408177");   },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Joint Secretary 1',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9447408177", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){launch("tel://9633361602");   },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Joint Secretary 2',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9633361602", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){ launch("tel://9447624489");  },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Joint Secretary 3',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9447624489", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){ launch("tel://9496516858"); },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vice Chairman 1',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9496516858", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){launch("tel://9447622690");   },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vice Chairman 2',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9447622690", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){ launch("tel://9946991358");  },
                  child:  Container(

                    height: 75,
                    child: Card(


                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 4,
                      child: Row(



                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(left: 10),
                            child:  SvgPicture.network(
                              'https://www.flaticon.com/svg/static/icons/svg/561/561253.svg',
                              height: 30,
                            ),),
                          SizedBox(height: 8,),
                          Padding(padding: const EdgeInsets.only(left: 5),

                            child: Container(
                              padding: const EdgeInsets.only(left: 10),

                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vice Chairman 3',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  +91 9946991358", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),

                ],
            ),)
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


