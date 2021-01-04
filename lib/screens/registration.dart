import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'donatetest.dart';

class VolunteerScreen extends StatefulWidget {
  @override
  _VolunteerScreenState createState() => _VolunteerScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _VolunteerScreenState extends State<VolunteerScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;



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
              padding: EdgeInsets.only( top: size.height * .05, left: size.height * .05,right: size.height * .05,bottom: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.network(
                          'https://www.flaticon.com/svg/static/icons/svg/3555/3555570.svg',
                          placeholderBuilder: (context) => CircularProgressIndicator(),
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
                              'Volunteering',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'Register as a volunteer ',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "Montserrat Regular"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 70,left: 20,right: 20),

                    child:Column(children: [
                      Text("Heading 1\n",  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                      Text("standard dummy text ever since the 1500s, when an unknown printer"
                          " took a galley of type and scrambled it to make a type specimen book\n",  style: TextStyle(fontSize: 15,),),],)
                    ),
                  SizedBox(height: 20,),

                  RaisedButton(
                    elevation: 4,
                    color: Colors.lightBlue,

                    onPressed: () {  },
                    textColor: Colors.white,
                    padding: const EdgeInsets.only(left: 20,right: 20),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),



                      child: const Text('REGISTER', style: TextStyle(fontSize: 17),),
                    ),




                ],
              ),
            ),
          ),
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
  //external links to form, developer contact etc.
  _launchURL() async {
    const url = 'https://www.amanzishan.me';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}

