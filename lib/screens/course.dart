import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;
//Copyright widget

    Widget copyright = Container(
      padding: const EdgeInsets.only(top: 15,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("© Developed by icodex",
            style: new TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
          ),
        ],),
    );
    //Button section
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //TODO: connect links via URL_LAUNCHER
          GestureDetector(
            onTap: (){print("working");},

            child: _buildButtonColumn(color, Icons.mail, ""),),
          _buildButtonColumn(color, Icons.location_on_outlined, ''),
          _buildButtonColumn(color, FontAwesomeIcons.facebook, ''),
        ],
      ),
    );
    //Text widget

    Container textBuild(String text, ) {


      return Container(

        padding: const EdgeInsets.only(top: 0,bottom: 30),

        child: Text(
          text,
          softWrap: true,
        ),
      );
    }
    // style


    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(

            width: size.width,
            height: size.height * .275,
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

                          'https://www.flaticon.com/svg/static/icons/svg/3555/3555625.svg',
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
                              'Training Course',
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
                  buttonSection,

                  Align(
                    child:Container(
                      padding: const EdgeInsets.only(top: 50,),
                      child: Text(
                        "HEADING",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                      ),
                    ),
                  ),
                ],
              ),),
          ),
          Container(
            padding:  const EdgeInsets.only(top: 280,left: 20,right: 20),
            child: ListView(
              children: [
                Text("Heading 1\n", style: TextStyle(fontWeight: FontWeight.bold),),

                textBuild("Lorem Ipsum is simply dummy text of the printing"
                    " and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer"
                    " took a galley of type and scrambled it to make a type specimen book.",),
                Text("Heading 1\n", style: TextStyle(fontWeight: FontWeight.bold),),
                textBuild("Lorem Ipsum is simply dummy text of the printing"
                    " and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer"
                    " took a galley of type and scrambled it to make a type specimen book.",),
                Text("Heading 1\n", style: TextStyle(fontWeight: FontWeight.bold),),
                textBuild("Lorem Ipsum is simply dummy text of the printing"
                    " and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer"
                    " took a galley of type and scrambled it to make a type specimen book.",),
                textBuild("Lorem Ipsum is simply dummy text of the printing"
                    " and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer"
                    " took a galley of type and scrambled it to make a type specimen book.",),
                textBuild("Lorem Ipsum is simply dummy text of the printing"
                    " and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer"
                    " took a galley of type and scrambled it to make a type specimen book.",),



                copyright],
            ),)
        ],
      ),
    );




  }
  Color color = Colors.black;

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),

        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );

  }


}


