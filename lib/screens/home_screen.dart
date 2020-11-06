import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(

            width: size.width,
            height: size.height * .3,
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
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://www.adultpalliativehub.com/sites/all/themes/palliativehub/images/panel-icon-3.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Palliative Care Clinic',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'Edathanattukara',
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
                  Expanded(

                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(
                          //TODO:navigate to palliative page
                          onTap: (){print("TEST OK");},
                        child: Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              SvgPicture.network(
                                'https://www.flaticon.com/svg/static/icons/svg/3555/3555625.svg',
                                height: 80,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'About Palliative',
                                style: cardTextStyle,
                              ),
                              SizedBox(height: 2,),
                              Text(
                                  "About Us",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  )
                              ),
                            ],
                          ),
                        ),
                        ),
                  GestureDetector(
                    onTap: (){print("TEST OK");},
                      child:  Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.network(
                                'https://www.flaticon.com/svg/static/icons/svg/3555/3555601.svg',
                                height: 80,
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Donate',
                                style: cardTextStyle,
                              ),
                              SizedBox(height: 2,),
                              Text(
                                  "Create a better future",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  )
                              ),
                            ],
                          ),
                        ),
                  ),
GestureDetector(
  onTap: (){print("TEST OK");},

                        child: Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.network(
                                'https://www.flaticon.com/svg/static/icons/svg/3555/3555418.svg',
                                height: 80,
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Office Contacts',
                                style: cardTextStyle,
                              ),
                              SizedBox(height: 2,),
                              Text(
                                  "Contact details",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  )
                              ),
                            ],
                          ),
                        ),
),
                    GestureDetector(onTap: (){print("TEST OK");},
                        child:    Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.network(
                                'https://www.flaticon.com/svg/static/icons/svg/3555/3555570.svg',
                                height: 80,
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Volunteering',
                                style: cardTextStyle,

                                ),
                              SizedBox(height: 2,),
                              Text(
                                "Register as a volunteer",
                                    style: TextStyle(
                                  color: Colors.grey,
                                      fontSize: 10
                              )
                              ),


                            ],
                          ),
                        ),
                        ),
GestureDetector(onTap: ( ){},
                            child:  Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.network(
                                'https://www.flaticon.com/svg/static/icons/svg/3555/3555500.svg',
                                height: 80,
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'District Contacts',
                                style: cardTextStyle,
                              ),
                              SizedBox(height: 2,),
                              Text(
                                  "Contact details",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  )
                              ),
                            ],
                          ),
                        ),
),
                    GestureDetector(onTap: (){},
                        child: Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.network(
                                'https://www.flaticon.com/svg/static/icons/svg/3555/3555226.svg',
                                height: 80,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Training Course',
                                style: cardTextStyle,
                              ),
                              SizedBox(height: 2,),
                              Text(
                                  "courses",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  )
                              ),
                            ],
                          ),
                        ),
                    ), 
                      ],
                    ),

                  ),
                  SizedBox(
                    height: size.height * 0.05,
                    child: Column(
                      children: <Widget>[
                        Text("© Developed by icodex",
                          style: new TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = linearGradient),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

