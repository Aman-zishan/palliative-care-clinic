import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'donate.dart';
import 'package:palliative_care/components/urls.dart';


class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _AboutScreenState extends State<AboutScreen> {
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
            onTap: (){
              urlfunc.launchURL("mailto:palliativeedk@gmail.com");
            },

          child: _buildButtonColumn(color, FontAwesomeIcons.envelope, ""),),

          GestureDetector(
            onTap: (){
              urlfunc.launchURL("https://goo.gl/maps/BQgV1MUBK24iZKfB7");
            },
              child: _buildButtonColumn(color, Icons.location_on_outlined,'')),
          GestureDetector(
              onTap: (){
                urlfunc.launchURL("https://www.facebook.com/groups/550155425193809/?ref=share");
              },
              child: _buildButtonColumn(color, FontAwesomeIcons.facebook, '')),
          GestureDetector(
            onTap: (){
              urlfunc.launchURL("https://instagram.com/palliativeedathanattukara?igshid=z08tcysrb0mb");
            },

            child: _buildButtonColumn(color, FontAwesomeIcons.instagram, ""),),
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
            height: size.height * .290,
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
                    height: size.height * 0.09,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          SvgPicture.network(

                            'https://www.flaticon.com/svg/static/icons/svg/3555/3555625.svg',
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
                            Text(
                              'About Us',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Padding(padding: EdgeInsets.only(left: 40,right: 0)),
                            SizedBox(height: size.height * 0.01,),
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




              ],
                    ),),


                  ),
Container(
  padding:   EdgeInsets.only(top: size.height * 0.30,left: 20,right: 20),

child: ListView(
  children: [
    Align(
      child:Container(
          padding: EdgeInsets.only(top: size.height * 0.01,bottom: size.height * 0.01),
          child:(_selectedLanguage == 'English')? Text(
            "PAIN AND PALLIATIVE CARE SOCIETY",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
          ):
          Text(
            "പാലിയേറ്റീവ് കെയർ സൊസൈറ്റി",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width * 0.040,),
          )



      ),

    ),

(_selectedLanguage == 'English')?
    textBuild("Edathanattukara Palliative Care is a community owned fellowship providing its services in Alanallur, "
      "Kottopadam, Thachanattukara and Thazhekode panchayats since 2008. The project aims to provide in patient"
        " care at home by lifting the bedridden patients out of their mental, physical, financial and social"
     " conflicts. Caring for the beneficiaries of this project, which are our brothers and sisters in the "
      "community which we belong should be seen as a social responsibility. When patients are neglected and "
      "old age homes sprout like mushrooms, and pity and goodness only color the camera flashes, the work of "
      "palliative care is done sincerely and transparently in the firm belief that palliative care is not the"
      " generosity of any servant and that it is the right of every bedridden patient."):
textBuild("സാന്ത്വന പരിചരണ രംഗത്ത് എടത്തനാട്ടുകരയിൽ 2008 മുതൽ പ്രവർത്തിച്ചു വരുന്ന സാമൂഹ്യ ഉടമസ്ഥതയിലുള്ള ഒരു സ്ഥാപനമാണ് പാലിയേറ്റീവ് കെയർ ക്ലിനിക്ക്"
" അതിന്റെ സേവനങ്ങൾ അലനല്ലൂർ പഞ്ചായത്ത് മുഴുവനായും തച്ചനാട്ടുകര, കോട്ടോപ്പാടം, താഴെക്കോട് പഞ്ചായത്തുകളിൽ ഭാഗികമായും ലഭിച്ചുകൊണ്ടിരിക്കുന്നു. കിടപ്പിലായ രോഗികളെ അവരുടെ മാനസികവും ശാരീരികവും സാമ്പത്തികവും സാമൂഹികവും ആത്മീയവുമായ സംഘർഷങ്ങളിൽ നിന്ന് കൈ പിടിച്ചുയർത്തി അന്തസ്സുറ്റ "
"പരിചരണം വീടുകളിൽ തന്നെ ലഭ്യമാക്കുകയാണ് ഈ സംരംഭം കൊണ്ട്  "
"ഉദ്ദേശിക്കുന്നത്. നാമുൾപ്പെടുന്ന സമൂഹത്തിലെ നമ്മുടെ സഹോദരീസഹോദരന്മാർ "
"തന്നെയായ ഈ സംരംഭത്തിന്റെ ഉപഭോക്താക്കളെ പരിചരിക്കുന്നത് ഒരു "
"സാമൂഹിക ഉത്തരവാദിത്വമായാണ് കാണേണ്ടത്. രോഗികൾ "
"അവഗണിക്കകപ്പടുകയും കൂണുകൾ പോലെ വൃദ്ധസദനങ്ങൾ "
" മുളച്ചുപൊന്തുകയും കാരുണ്യവും നന്മയും ക്യാമറാഫ്ലാഷുകളെ "
"മാത്രം നിറം പിടിപ്പിക്കുകയും ചെയ്യുമ്പോൾ പാലിയേറ്റീവ് കെയറിന്റെ"
" പ്രവർത്തനങ്ങൾ ആത്മാർത്ഥവും സുതാര്യവുമായി നടന്നു കൊണ്ടിരിക്കുന്നത് "
"പാലിയേറ്റീവ് കെയർ ഒരു സേവകന്റെയും ഔദാര്യമല്ലെന്നും അത് "
"കിടപ്പിലാവുന്ന ഓരോ രോഗികളുടെയും അവകാശമാണെന്നുമുള്ള ഉറച്ച "
"വിശ്വാസത്തിന്മേലാണ്.",),
    (_selectedLanguage == 'English')?
    Text("Activities of Edathanattukara Palliative Care society\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),):
    Text("എടത്തനാട്ടുകര പാലിയേറ്റീവ് കെയർ ക്ലിനിക്കിന്റെ പ്രവർത്തനങ്ങൾ\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
    (_selectedLanguage == 'English')?
    Text("- Home care\n", style: TextStyle(fontWeight: FontWeight.bold,),):
    Text("- ഹോം കെയർ\n", style: TextStyle(fontWeight: FontWeight.bold,),),

    (_selectedLanguage == 'English')?
    textBuild("To ensure palliative care for bedridden patients at home, doctor-led doctor home care is"
        " conducted four times a month, nurse-led nursing home care thirty-two times a month, and volunteer "
        "home care, which consists of only volunteers about thirty times."
      ,):
    textBuild("കിടപ്പിലായ രോഗികളെ വീടുകളിൽ ചെന്ന് സാന്ത്വന പരിചരണം "
        "ഉറപ്പുവരുത്തുവാൻ രണ്ടു വാഹനങ്ങളിലായി മാസത്തിൽ നാലു തവണ ഡോക്ടറുടെ"
        " നേതൃത്വത്തിലുള്ള ഡോക്ടേഴ്‌സ് ഹോം കെയറും മാസത്തിൽ മുപ്പത്തിരണ്ട് തവണ "
        "നഴ്സിന്റെ നേതൃത്വത്തിലുള്ള നഴ്സ് ഹോം കെയറും കൂടാതെ ഏകദേശം മുപ്പത്"
        " തവണ വളണ്ടിയർമാർ മാത്രം ഉൾക്കൊള്ളുന്ന വളണ്ടിയർ ഹോം കെയറും നടത്തിവരുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Day Care\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- ഡേ കെയർ\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Four times a month, the society's day care system allows patients trapped in a room including those with"
        "spinal cord injuries, to communicate with the outside world and thereby reduce their stress. Organizes "
        "job training and other events for the consumer's of the day care system.",):
    textBuild("നട്ടെല്ലിന് ക്ഷതമേറ്റവർ ഉൾപ്പെടെ ഒരു മുറിയിൽ തളക്കപ്പെട്ട രോഗികളെ "
        "മാസത്തിൽ നാല് തവണ ക്ലിനിക്കിൽ ഡേ കെയർ സംവിധാനത്തിലൂടെ പുറം"
        " ലോകവുമായി ബന്ധപ്പെടാനും അതുവഴി അവരുടെ മാനസിക സംഘർഷം "
        "കുറക്കാനും സഹായിക്കുന്നു. ഡേ കെയർ സംവിധാനത്തിലെ ഉപഭോക്താക്കൾക്ക്"
        " തൊഴിൽ പരിശീലനവും മറ്റു പരിപാടികളും സംഘടിപ്പിക്കുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Physiotherapy OP\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- ഫിസിയോതെറാപ്പി ഒ.പി\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("The physiotherapy OP system is conducted at the clinic four times a month.",):
    textBuild("മാസത്തിൽ നാല് തവണ ക്ലിനിക്കിൽ ഫിസിയോതെറാപ്പി ഒ.പി സംവിധാനം"
        " നടന്നുവരുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Psychiatry OP\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- സൈക്കാട്രീ ഒ.പി\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("The OP system is available at the clinic four times a month for patients in need of mental care.",):
    textBuild("മാനസിക പരിചരണം ആവിശ്യമുള്ള രോഗികൾക്ക് മാസത്തിൽ നാല് തവണ "
        "ക്ലിനിക്കിൽ വെച്ച് ഒ.പി സംവിധാനം ലഭ്യമാകുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Educational assistance\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- വിദ്യാഭ്യാസ സഹായം\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Provides educational assistance to palliative care families who are struggling with educational needs.",):
    textBuild("വിദ്യാഭ്യാസ ആവിശ്യങ്ങൾക്ക് ബുദ്ധിമുട്ട്  നേരിടുന്ന പാലിയേറ്റീവ്"
        " കുടുംബങ്ങൾക്ക് വിദ്യാഭ്യാസ സഹായം നൽകുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Food assistance\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- ഭക്ഷ്യ സഹായം\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Food assistance is being provided to needy families under the clinic.",):
    textBuild("ക്ലിനിക്കിന് കീഴിലെ നിർധനരായ കുടുംബങ്ങൾക്ക് ഭക്ഷ്യസഹായം "
        "നൽകിവരുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Ambulance\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- ആംബുലൻസ്\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Edathanattukara Palliative Care society has its own ambulance.",):
    textBuild("എടത്തനാട്ടുകര പാലിയേറ്റീവ് കെയർ ക്ലിനിക്കിന് കീഴിൽ സ്വന്തമായി ഒരു "
        "ആംബുലൻസ് ഉണ്ട്."),
    (_selectedLanguage == 'English')?
    Text("- Supply of equipment required for patients\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- രോഗികൾക്ക് ആവിശ്യമായ ഉപകരണങ്ങളുടെ വിതരണം\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Provides equipment and clinical assistance such as wheelchairs, walkers and oxygen concentrators to "
       "needy patients in need.",):
    textBuild("ആവിശ്യമായ സാഹചര്യത്തിൽ നിർധനരായ രോഗികൾക്ക് വീൽച്ചെയർ, വാക്കർ,  "
        "ഓക്സിജൻ കോൺസെൻട്രേറ്റർ മുതലായ ഉപകരണങ്ങളും ക്ലിനിക്കൽ"
        " സഹായങ്ങളും നൽകുന്നു."),
    (_selectedLanguage == 'English')?
    Text("- Student Initiative in Palliative Care\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- സ്റ്റുഡന്റ് ഇനിഷ്യേറ്റീവ് ഇൻ പാലിയേറ്റീവ് (SIP)\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("The system aims to bring the concepts of palliative care to students and engage them in palliative care."
        "These volunteers are involved in many activities, including home care under the clinic",):
    textBuild("പാലിയേറ്റീവ് കെയറിന്റെ ആശയങ്ങൾ വിദ്യാർത്ഥികളിൽ എത്തിക്കാനും"
        " അവരെ പാലിയേറ്റീവ് പ്രവർത്തനങ്ങളിൽ പങ്കാളികളാക്കാനും ഈ സംവിധാനം"
        " ലക്ഷ്യമിടുന്നു. ക്ലിനിക്കിനു കീഴിലെ ഹോം കെയർ ഉൾപ്പെടെ പല "
        "പ്രവർത്തനങ്ങളിലും SIP വളണ്ടിയർമാർ പ്രവർത്തനനിരതരാണ്."),
    (_selectedLanguage == 'English')?
    Text("- Women's Wing\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- വനിതാ വിഭാഗം\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("Edathanattukara Palliative society has a women's wing consisting of women volunteers.",):
    textBuild("എടത്തനാട്ടുകര പാലിയേറ്റീവ് ക്ലിനിക്കിന്റെ കീഴിൽ വനിതാ വളണ്ടിയർമാർ"
        " ഉൾക്കൊള്ളുന്ന ഒരു വനിതാ വിഭാഗം പ്രവർത്തിക്കുന്നുണ്ട്."),
    (_selectedLanguage == 'English')?
    Text("- Anyone can be a palliative volunteer\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- ആർക്കെല്ലാം ഒരു പാലിയേറ്റീവ് വളണ്ടിയർ ആവാം\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("One who is willing to provide care to our brothers and sisters who have been living within four walls "
        "for ages can become palliative volunteers. Being a palliative care volunteer as a community organization "
        "transcends all racial, religious, political, educational, age and gender differences\n\n"
      "To register as a volunteer for Edathanattukara Palliative Care society, click the register button below and fill up the form.",):
    textBuild("കാലങ്ങളായി നാലു ചുമരുകൾക്കുള്ളിൽ മാത്രം ജീവിതം തള്ളിനീക്കുന്ന നമ്മുടെ "
        "സഹോദരീ സഹോദരന്മാർക്ക് സാന്ത്വന പരിചരണം നൽകാൻ സന്നദ്ധതയുള്ള"
        " ആർക്കും പാലിയേറ്റീവ് വളണ്ടിയർ ആവാം. ഒരു സാമൂഹിക സംഘടന എന്ന"
        " നിലയിൽ പാലിയേറ്റീവ് കെയറിന്റ വളണ്ടിയർ ആവുക എന്നത് ജാതി, മത,"
        "രാഷ്ട്രീയ, വിദ്യാഭ്യാസ, പ്രായ, ലിംഗ വ്യത്യാസങ്ങൾക്കെല്ലാം അതീതമാണ്.\n\n"
        "എടത്താനാട്ടുകര പാലിയേറ്റീവ് കെയറിന്റെ വളണ്ടിയർ ആയി "
        "റെജിസ്ട്രർ ചെയ്യാൻ ആയി താഴെ ഉള്ള രജിസ്റ്റർ ബട്ടൺ ക്ലിക്ക് ചെയ്യൂ"

    ),
    Padding(
      padding: const EdgeInsets.only(left: 90,right: 90,bottom: 20),
      child: RaisedButton(
        elevation: 4,
        color: Colors.lightBlue,
        onPressed: () {urlfunc.launchURL("https://docs.google.com/forms/d/e/1FAIpQLScPuY73b2i7ZKCMRFI0gO5zrdM7yOICGVog-NSzuQeMc8keTg/viewform?usp=sf_link");},
        textColor: Colors.white,
        padding: const EdgeInsets.only(left: 10,right: 10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: const Text('REGISTER', style: TextStyle(fontSize: 17),),
      ),
    ),
    (_selectedLanguage == 'English')?
    Text("- How money is raised for palliative care?\n", style: TextStyle(fontWeight: FontWeight.bold),):
    Text("- പാലിയേറ്റീവ് സേവനങ്ങൾക്കുള്ള ധനം എങ്ങനെ കണ്ടെത്തുന്നു?\n", style: TextStyle(fontWeight: FontWeight.bold),),
    (_selectedLanguage == 'English')?
    textBuild("All services under palliative care are completely free. It costs a lot of money every month. The only "
        'source of income for palliative care is the amount collected from the natives, the amount collected on'
        ' January 15 through the students and other contributions. Every penny you contribute to this project is '
        'valuable. If you would like to contribute to the activities of Edathanattukara Palliative Care society, '
        "please use the Donate button below.",):
    textBuild("പാലിയേറ്റീവ് കെയറിന്റെ കീഴിലുള്ള സേവനങ്ങളെല്ലാം തന്നെ പൂർണമായും "
        "സൗജന്യമാണ്. മാസം തോറും വലിയ ഒരു തുക ചിലവു വരുന്നുണ്ട്. നാട്ടുകാരിൽ"
        " നിന്ന് പിരിച്ചെടുക്കുന്ന തുകയും, വിദ്യാർത്ഥികളിലൂടെ ജനുവരി 15ന് "
        "പിരിച്ചെടുക്കുന്ന തുകയും മറ്റു സംഭാവനകളുമാണ് പാലിയേറ്റീവ് കെയറിന്റെ"
        " ഏകവരുമാനം. ഈസംരഭത്തിലേക്ക് നിങ്ങൾ നൽകുന്ന ഓരോ രൂപയും "
        "വിലപ്പെട്ടതാണ്. താങ്കൾക്ക് എടത്തനാട്ടുകര പാലിയേറ്റീവ് കെയർ ക്ലിനിക്കിന്റെ"
        " പ്രവർത്തനങ്ങൾക്ക് സംഭാവന ചെയ്യാൻ താൽപര്യമുണ്ടെങ്കിൽ താഴെയുള്ള Donate "
        "ബട്ടൺ ഉപയോഗിക്കുക."),

    Padding(
      padding: const EdgeInsets.only(left: 90,right: 90,bottom: 20),
      child: RaisedButton(
        elevation: 4,
        color: Colors.lightBlue,
        onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DonateTestScreen())
        );},
        textColor: Colors.white,
        padding: const EdgeInsets.only(left: 20,right: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: const Text('DONATE', style: TextStyle(fontSize: 17),),
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


