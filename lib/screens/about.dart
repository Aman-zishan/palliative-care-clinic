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
  String _selectedLanguage = 'English';
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
            onTap: (){
              print("working");
            },

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
          style: TextStyle(fontSize: 15),
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
                      child:(_selectedLanguage == 'English')? Text(
                        "PAIN AND PALLIATIVE CARE CLINIC",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                      ):
                      Text(
                        "പാലിയേറ്റീവ് കയർ ക്ലിനിക്ക്",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                      )



                    ),

                  ),


              ],
                    ),),


                  ),
Container(
  padding:  const EdgeInsets.only(top: 280,left: 20,right: 20),
  
child: ListView(
  children: [

(_selectedLanguage == 'English')?
    textBuild("Edathanattukara Palliative Care is a community owned company providing its services in Alanallur,"
      "Kottopadam, Thachanattukara and Thazhekode panchayats since 2008. The project aims to provide inpatient"
        " care at home by lifting the bedridden patients out of their mental, physical, financial and social"
     " conflicts. Caring for the beneficiaries of this project, which are our brothers and sisters in the"
      "community which we belong, should be seen as a social responsibility. When patients are neglected and"
      "old age homes sprout like mushrooms, and pity and goodness only color the camera flashes, the work of"
      "palliative care is done sincerely and transparently in the firm belief that palliative care is not the"
      " generosity of any servant and that it is the right of every bedridden patient."):
textBuild("സാന്ത്വന പരിചരണ രംഗത്ത് എടത്തനാട്ടുകരയിൽ 2008 മുതൽ പ്രവർത്തിച്ചു"
" വരുന്ന പാലിയേറ്റീവ് കയർ ക്ലിനിക്ക്. ഒരു സാമൂഹ്യ ഉടമസ്ഥതയിലുള്ള "
"സ്ഥാപനമാണ് അതിന്റെ സേവനങ്ങൾ അലനല്ലൂർ, കോട്ടോപ്പാടം, തച്ചനാട്ടുകര, "
"താഴേക്കോട് പഞ്ചായത്തുകളിൽ ലഭിച്ചുകൊണ്ടിരിക്കുന്നു. കിടപ്പിലായ "
"രോഗികളെ അവരുടെ മാനസികവും ശാരീരികവും സാമ്പത്തികവും"
"സാമൂഹികവുമായ സംഘർഷങ്ങളിൽ നിന്ന് കൈ പിടിച്ചുയർത്തി അന്തസ്സുറ്റ "
"പരിചരണം വീടുകളിൽ തന്നെ ലഭ്യമാക്കുകയാണ് ഈ സംരംഭം കൊണ്ട് "
"ഉദ്ദേശിക്കുന്നത്. നാമുൾപ്പെടുന്ന സമൂഹത്തിലെ നമ്മുടെ സഹോദരീസഹോദരന്മാർ "
"തന്നെയായ ഈ സംരംഭത്തിന്റെ ഉപഭോക്താക്കളെ പരിചരിക്കുന്നത് ഒരു "
"സാമൂഹിക ഉത്തരവാദിത്വമായാണ് കാണേണ്ടത്. രോഗികൾ "
"അവഗണിക്കകപ്പടുകയും കൂണുകൾ പോലെ വൃദ്ധസദനങ്ങൾ"
" മുളച്ചുപൊന്തുകയും കാരുണ്യവും നന്മയും ക്യാമെറാഫ്‌ളാഷുകളെ "
"മാത്രം നിറം പിടിപ്പിക്കുകയും ചെയുമ്പോൾ പാലിയേറ്റീവ് കെയറിന്റെ"
" പ്രവർത്തനങ്ങൾ ആത്മാർത്ഥവും സുതാരയവുമായി നടന്നു കൊണ്ടിരിക്കുന്നത് "
"പാലിയേറ്റീവ് കെയർ ഒരു സേവകന്റ്റെയും ഔദാര്യമല്ലെന്നും അത്"
"കിടപ്പിലാവുന്ന ഓരോ രോഗികളുടെയും അവകാശമാണെന്നുമുള്ള ഉറച്ച "
"വിശ്വാസത്തിന്മേലാണ്.",),
    (_selectedLanguage == 'English')?
    Text("Activities of Edathanattukara Palliative Care Clinic\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),):
    Text("എടത്തനാട്ടുകര പാലിയേറ്റീവ് കെയർ ക്ലിനിക്കിന്കെ പ്രവർത്തനങ്ങൾ\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
    (_selectedLanguage == 'English')?
    Text("- Home care\n", style: TextStyle(fontWeight: FontWeight.bold,),):
    Text("- ഹോം കെയർ\n", style: TextStyle(fontWeight: FontWeight.bold,),),

    (_selectedLanguage == 'English')?
    textBuild("To ensure palliative care for bedridden patients at home, two-vehicle doctor-led doctor home care is"
        " conducted four times a month, nurse-led nursing home care thirty-two times a month, and volunteer"
        "home care, which consists of only volunteers about thirty times"
        " took a galley of type and scrambled it to make a type specimen book.",):
    textBuild("കിടപ്പിലായ രോഗികളെ വീടുകളിൽ ചെന്ന് സാന്ത്വന പരിചരണം "
        "ഉറപ്പുവരുത്തുവാൻ   രണ്ടു വാഹ്നങ്ങളിലായി മാസത്തിൽ നാല് തവണ ഡോക്ടറുടെ"
        " നേതൃത്വത്തിലുള്ള ഡോക്ടർസ് ഹോം കെയറും മാസത്തിൽ മുപ്പത്തിരണ്ട് തവണ"
        "നഴ്സിന്റെ നേതൃത്വത്തിലുള്ള നഴ്സ് ഹോം കെയറും കൂടാതെ ഏകദേശം മുപ്പത്"
        " തവണ വളണ്ടിയർമാർ മാത്രം ഉൾക്കൊള്ളുന്ന വളണ്ടിയർ ഹോം കെയറും നടത്തിവരുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Day Care\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- യ കെയർ\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Four times a month, the clinic's day care system allows patients trapped in a room, including those with"
        "spinal cord injuries, to communicate with the outside world and thereby reduce their stress. Organizes"
        "job training and other events for the customers of the day care system.",):
    textBuild("നകട്ടലലിന്ക്ഷതയമറ്റവർ ഉൾകപ്പകട ഒരു മുെിയിൽ തളക്കകപ്പട്ട യരാഗികകള "
        "മാസത്തിൽ നാല് തവണ ക്ലിനിക്കിൽ യ കകയർ സംവിധാനത്തിലൂകട പുെം"
        " നേതൃത്വത്തിലുള്ള ഡോക്ടർസ് ഹോം കെയറും മാസത്തിൽ മുപ്പത്തിരണ്ട് തവണ"
        "നഴ്സിന്റെ നേതൃത്വത്തിലുള്ള നഴ്സ് ഹോം കെയറും കൂടാതെ ഏകദേശം മുപ്പത്"
        " തവണ വളണ്ടിയർമാർ മാത്രം ഉൾക്കൊള്ളുന്ന വളണ്ടിയർ ഹോം കെയറും നടത്തിവരുന്നു."),



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


