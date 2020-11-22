import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _AboutScreenState extends State<AboutScreen> {
  List<String> languages = ['English', 'മലയാളം'];
  String _selectedLanguage = 'English' ;
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'About Us',
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
                        ),


                      ],
                      
                    ),
                    

                  ),
                  buttonSection,

                  Align(
                    child:Container(
                      padding: const EdgeInsets.only(top: 50,),
                      child: Text(
                        "PAIN AND PALLIATIVE CARE CLINIC",
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
(_selectedLanguage == 'English')?
    textBuild("Lorem Ipsum is simply dummy text of the printing"
        " and typesetting industry. Lorem Ipsum has been the industry's "
        "standard dummy text ever since the 1500s, when an unknown printer"
        " took a galley of type and scrambled it to make a type specimen book.",):
textBuild("സാന്ത്വന പരിചരണ രംഗത്ത് എടത്തനാട്ടുകരയിൽ 2008 മുതൽ പ്രവർത്തിച്ചു വരുന്ന സ്ഥാപനമാണ് പാലിയേറ്റീവ് കെയർ ക്ലിനിക്ക്. ഒരു സാമൂഹ്യ ഉടമസ്ഥതയിലുള്ള ഒരു സ്ഥാപനമെന്ന നിലയിൽ അതിന്റെ സേവനങ്ങൾ അലനല്ലൂർ പഞ്ചായത്ത് മുഴുവനായും തച്ചനാട്ടുകര, കോട്ടോ പ്പാടം പഞ്ചായത്തുകളിൽ ഭാഗികമായും ലഭിച്ചുകൊണ്ടിരിക്കുന്നു. കിടപ്പിലായ രോഗികളെ അവരുടെ മാനസികവും ശാരീരികവും സാമ്പത്തികവും സാമൂഹികവും ആത്മീയവുമായ സംഘർഷങ്ങളിൽ നിന്ന് കൈ പിടിച്ചുയർത്തി അന്തസ്സുറ്റ പരിചരണം ലഭ്യമാക്കുകയാണ് ഈ സംരംഭം ഉദ്ദേശിക്കുന്നത്. നാമുൾപ്പെടുന്ന സമൂഹത്തിലെ നമ്മുടെ സഹോദരീസഹോദരന്മാർ തന്നെയായ ഈ സംരംഭത്തിന്റെ ഉഭഭോക്താക്കളെ പരിചരിക്കുന്നത് ഒരു സാമൂഹിക ഉത്തരവാദിത്വമായാണ് കാണേണ്ടത്. രോഗികൾ അവഗണിക്കപ്പെടുകയും കൂണുകൾ പോലെ വൃദ്ധസദനങ്ങൾ മുളച്ചുപൊന്തുകയും ചെയ്യുകയും കാരുണ്യവും നന്മയും ക്യാമറാഫ്ലാഷുകളെ മാത്രം നിറം പിടിപ്പിക്കുകയും ചെയ്യുമ്പോൾ പാലിയേറ്റീവ് കെയറിന്റെ പ്രവർത്തനങ്ങൾ ആത്മാർത്ഥവും സുതാര്യവുമായി നടന്നുകൊണ്ടിരിക്കുന്നത് പാലിയേറ്റീവ് കെയർ ഒരു സേവകന്റെയും ഔദാര്യമല്ലെന്നും അത് കിടപ്പിലാവുന്ന ഓരോ രോഗിയുടെയും അവകാശമാണെന്നുമുള്ള ഉറച്ച വിശ്വാസത്തിന്മേലാണ്",),
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


