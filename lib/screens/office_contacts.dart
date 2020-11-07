import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

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

    //Text widget


    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(63, 63, 63, 1));

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
              ),),


          ),
          Container(
            padding:  const EdgeInsets.only(top: 190,left: 20,right: 20),

            child: ListView(
              //contact list
              children: [

                GestureDetector(
                  onTap: (){  },
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
                                    'Office Contact',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                    'Office Secretary',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                    'General Secretary',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                    'Home Care team 1',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                    'Home Care team 2',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                    'Home Care team 3',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  },
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
                                    'Home Care team 4',
                                    style: cardTextStyle,
                                  ),
                                  Text("Ph:  XXX XXX XXX", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 14),), ],
                              ),),),


                        ],
                      ),
                    ),
                  ),
                ),




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


