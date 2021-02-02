import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:palliative_care/components/urls.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';


class VolunteerScreen extends StatefulWidget {
  @override
  _VolunteerScreenState createState() => _VolunteerScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _VolunteerScreenState extends State<VolunteerScreen> {
  List<String> languages = ['English', 'മലയാളം'];
  String _selectedLanguage = 'മലയാളം';
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;
    Container textBuild(String text, ) {


      return Container(

        padding: const EdgeInsets.only(top: 0,bottom: 30),
        child: Text(
          text,
          style: TextStyle(fontSize: 15),
          softWrap: true,
        ),
      );
    }


    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(

                width: size.width,
                height: size.height * .255,
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
                              'https://www.flaticon.com/svg/static/icons/svg/3555/3555570.svg',
                              placeholderBuilder: (context) => CircularProgressIndicator(),
                              fit: BoxFit.cover,
                              width: size.width * 0.15,
                            ),


                            SizedBox(
                              width: size.width * 0.020,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                AutoSizeText(
                                  'Volunteer',
                                  style: TextStyle(
                                      fontFamily: "Montserrat Medium",
                                      color: Colors.white,
                                      fontSize: 20),
                                ),

                                Padding(padding: EdgeInsets.only(left: size.width * 0.05,right: 0)),
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
                      )


                    ],
                  ),
                ),
              ),


            ],
          ),
          Container(
              padding:  EdgeInsets.only( left: size.width * 0.05,right: size.width * 0.05),

              child:Column(children: [
                SizedBox(height: 20,),
                Text(
                  "VOLUNTEER REGISTRATION ",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                ),
                SizedBox(height: 20,),
                (_selectedLanguage == 'English')?
                textBuild("One who is willing to provide care to our brothers and sisters who have been living within only four walls "
                    "for ages can become palliative volunteers. Being a palliative care volunteer as a community organization "
                    "transcends all racial, religious, political, educational, age and gender differences\n\n"
                    "To register as a volunteer for Edathanattukara Palliative Care society, click the register button below and fill up the form.",):
                textBuild("കാലങ്ങളായി നാലു ചുമരുകൾക്കുള്ളിൽ മാത്രം ജീവിതം തള്ളിനീക്കുന്ന നമ്മുടെ "
                    "സഹോദരീ സഹോദരന്മാർക്ക് സാന്ത്വന പരിചരണം നൽകാൻ സന്നദ്ധതയുള്ള"
                    " ആർക്കും പാലിയേറ്റീവ് വളണ്ടിയർ ആവാം. ഒരു സാമൂഹിക സംഘടന എന്ന"
                    " നിലയിൽ പാലിയേറ്റീവ് കെയറിന്റ വളണ്ടിയർ ആവുക എന്നത് ജാതി, മത,"
                    " രാഷ്ട്രീയ, വിദ്യാഭ്യാസ, പ്രായ, ലിംഗ വ്യത്യാസങ്ങൾക്കെല്ലാം അതീതമാണ്.\n\n"
                    "എടത്താനാട്ടുകര പാലിയേറ്റീവ് കെയറിന്റെ വളണ്ടിയർ ആയി "
                    "റെജിസ്ട്രർ ചെയ്യാൻ ആയി താഴെ ഉള്ള റെജിസ്ട്രർ ബട്ടൺ ക്ലിക്ക് ചെയൂ"),],)
          ),
          SizedBox(height: size.height * 0.0001,),

          RaisedButton(
            elevation: 4,
            color: Colors.lightBlue,

            onPressed: () {urlfunc.launchURL("https://docs.google.com/forms/d/e/1FAIpQLScPuY73b2i7ZKCMRFI0gO5zrdM7yOICGVog-NSzuQeMc8keTg/viewform?usp=sf_link");  },
            textColor: Colors.white,
            padding: const EdgeInsets.only(left: 20,right: 20),

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),



            child: const Text('REGISTER', style: TextStyle(fontSize: 17),),
          ),


        ],
      ),

    );
  }
  //external links to form, developer contact etc.
  _launchURL() async {
    const url = 'https://www.instagram.com/_icodex_/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}

