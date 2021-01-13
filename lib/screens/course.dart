import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palliative_care/components/urls.dart';
import 'package:url_launcher/url_launcher.dart';


class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _CourseScreenState extends State<CourseScreen> {
  List<String> languages = ['English', 'മലയാളം'];
  String _selectedLanguage = 'മലയാളം';
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
              padding: EdgeInsets.all( size.height * .05),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.network(
                          'https://www.flaticon.com/svg/static/icons/svg/3555/3555226.svg',
                          placeholderBuilder: (context) => CircularProgressIndicator(),
                          fit: BoxFit.cover,
                          width: 60.0,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Courses',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),

                            Padding(padding: EdgeInsets.only(left: 40,right: 0)),
                            SizedBox(height: 15,),
                            DropdownButton(
                              hint: Text(_selectedLanguage),
                              icon: Icon(Icons.language,color: Colors.black),

                              value: _selectedLanguage,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedLanguage = newValue;
                                  print(_selectedLanguage);
                                });
                              },
                              items: languages.map((location) {
                                return DropdownMenuItem(
                                  child: new Text(location),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                      padding:  const EdgeInsets.only(top: 70,left: 5,right: 5),

                      child:Column(children: [
                        SizedBox(height: 20,),
                        Text(
                          "TRAINING COURSES",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                        ),
                        SizedBox(height: 20,),
                        (_selectedLanguage == 'English')?
                        textBuild("A four month Palliative Nursing Course is being conducted under the Edathanattukara Palliative Care Society.  In addition, there is a two-year nursing course for 10th graders, +2 for people between the ages of 18 and 40 (male and female)."
                            ,):
                        textBuild("എടത്തനാട്ടുകര പാലിയേറ്റീവ്‌ കെയർ സൊസൈറ്റിക്ക്‌ കീഴിൽ 4 മാസ പാലിയേറ്റീവ്‌ നെഴ്സിംഗ്‌ കോഴ്‌സ്‌ നടന്ന്  "
                            "വരുന്നു. കൂടാതെ പത്താം ക്ലാസ്‌ , +2 കഴിഞ്ഞ 18 നും 40 വയസ്സിനും ഇടയിലുള്ള  ആളുകൾക്ക്‌ ( ആൺ ,പെൺ ) "
                            " രണ്ട്‌ വർഷ നെഴ്സിംഗ്‌ കോഴ്സും നടന്ന് വരുന്നു."
  ),],)
                  ),
                  SizedBox(height: 20,),

                  RaisedButton(
                    elevation: 4,
                    color: Colors.lightBlue,

                    onPressed: () {urlfunc.launchURL("https://docs.google.com/forms/d/e/1FAIpQLSfC1wa2r8qWLohM88gKujyReOgC3X9mt46MAdsqVW2KThR9Rg/viewform?usp=sf_link") ; },
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
  _launchURL() async {
    const url = 'https://www.amanzishan.me';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}


