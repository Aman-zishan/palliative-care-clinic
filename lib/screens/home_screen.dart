import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';
import 'office_contacts.dart';
import 'donatetest.dart';
import 'registration.dart';
import 'package:palliative_care/models_provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:palliative_care/components/animator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _HomeScreenState extends State<HomeScreen>
  with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
  _animationController =
  AnimationController(vsync: this, duration: Duration(milliseconds: 800));
  super.initState();
  }

  // function to toggle circle animation
  changeThemeMode(bool theme) {
  if (!theme) {
  _animationController.forward(from: 0.0);
  } else {
  _animationController.reverse(from: 1.0);
  }
  }


  @override
  Widget build(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
  // to get size
  var size = MediaQuery.of(context).size;

  // style
  var cardTextStyle = TextStyle(
  fontFamily: "Montserrat Regular",
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: themeProvider.themeMode().textColor);

  return Scaffold(
  key: _scaffoldKey,
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
  padding: EdgeInsets.only( top: size.height * .05, left: size.height * .05,right: size.height * .05,bottom: 10),
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
  'https://www.adultpalliativehub.com/sites/all/themes/palliativehub/images/panel-icon-3.png'
  ),
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
  'Edathanattukara ',
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

  onTap: (){

  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => AboutScreen())
  );},
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
  placeholderBuilder: (context) => CircularProgressIndicator(),
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
  onTap: (){ Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DonateTestScreen())
  ); },
  child: Card(
  shape:RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8)
  ),
  elevation: 4,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SvgPicture.network(
  'https://www.flaticon.com/svg/static/icons/svg/3555/3555601.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
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
  onTap: (){Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => OfficeScreen())
  );},

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
  placeholderBuilder: (context) => CircularProgressIndicator(),
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
  GestureDetector(onTap: (){Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => VolunteerScreen())
  );},
  child: Card(
  shape:RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8)
  ),
  elevation: 4,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SvgPicture.network(
  'https://www.flaticon.com/svg/static/icons/svg/3555/3555570.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
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
  child: Card(
  shape:RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8)
  ),
  elevation: 4,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SvgPicture.network(
  'https://www.flaticon.com/svg/static/icons/svg/3555/3555500.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
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
  placeholderBuilder: (context) => CircularProgressIndicator(),
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

  ],
  ),
  ),
  ),

  Container(
  child: Padding(
  padding: const EdgeInsets.only(bottom: 40),
  child: Align(
  alignment: FractionalOffset.bottomRight,
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
 GestureDetector(
  onTap: (){_launchURL();},
  child: Text("© Developed by icodex",
  style: new TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  foreground: Paint()..shader = linearGradient),
  ),),

  ZAnimatedToggle(
    values: ['💡', '🌙'],
    onToggleCallback: (v) async {
      await themeProvider.toggleThemeData();
      setState(() {});
      changeThemeMode(themeProvider.isLightTheme);
    },
  ),],),
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


