import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upi_pay/upi_pay.dart';
import 'dart:math';

class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _DonateScreenState extends State<DonateScreen> {

  String _upiAddrError;

  final _upiAddressController = TextEditingController();
  final _amountController = TextEditingController();
  Future<List<ApplicationMeta>> _appsFuture;

  void initState() {
    super.initState();

    _amountController.text =
        "100";
    _upiAddressController.text = "amanzishan@oksbi";
    _appsFuture = UpiPay.getInstalledUpiApplications();
  }
  @override
  void dispose() {
    _amountController.dispose();
    _upiAddressController.dispose();
    super.dispose();
  }

  Future<void> _onTap(ApplicationMeta app) async {
    final err = _validateUpiAddress(_upiAddressController.text);
    if (err != null) {
      setState(() {
        _upiAddrError = err;
      });
      return;
    }
    setState(() {
      _upiAddrError = null;
    });

    final transactionRef = Random.secure().nextInt(1 << 32).toString();
    print("Starting transaction with id $transactionRef");

    final a = await UpiPay.initiateTransaction(
      amount: _amountController.text,
      app: app.upiApplication,
      receiverName: 'Aman',
      receiverUpiAddress: _upiAddressController.text,
      transactionRef: transactionRef,
      merchantCode: '7372',
    );

    print(a);
  }
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

//Account detaiils Pop up card
    Future _accountDetails(BuildContext context) {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Not in stock'),
            content: const Text('This item is no longer available'),
            actions: [
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }



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
                              'Donate',
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
                  Align(
                    child:Container(
                      padding: const EdgeInsets.only(top: 70,),
                      child: Text(
                        "Account Details and payment",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                      ),


                    ),

                  ),

                ],
              ),),


          ),
          Container(
            padding:  const EdgeInsets.only(top: 270,left: 20,right: 20),

            child: ListView(
              
              //contact list

              children: <Widget>[
                Expanded(
                  child: Text("Name : Palliative care clinic",
                    style: TextStyle(color: Colors.grey,fontSize: 15),


                  ),
                ),
                Expanded(
                  child: Text("Account number : xxx xxx xxx ",
                    style: TextStyle(color: Colors.grey,fontSize: 15),


                  ),
                ),
                Expanded(
                  child: Text("Branch : xx xxx xxx ",
                    style: TextStyle(color: Colors.grey,fontSize: 15),


                  ),
                ),
                Expanded(
                  child: Text("IFSC code: xx xx xxx xx ",
                    style: TextStyle(color: Colors.grey,fontSize: 15),


                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Row(
                    children: <Widget>[

                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.grey),
                          controller: _upiAddressController,
                          enabled: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            hintText: 'address@upi',
                            labelText: 'UPI Address',

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                if (_upiAddrError != null)
                  Container(
                    margin: EdgeInsets.only(top: 4, left: 12),
                    child: Text(
                      _upiAddrError,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: _amountController,

                          enabled: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Amount',
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Text(
                          'Choose a payment method',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      FutureBuilder<List<ApplicationMeta>>(
                        future: _appsFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState != ConnectionState.done) {
                            return Container();
                          }

                          return GridView.count(

                            crossAxisCount: 2,
                            shrinkWrap: true,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            childAspectRatio: 1.6,
                            physics: NeverScrollableScrollPhysics(),
                            children: snapshot.data
                                .map((it) => Material(
                              key: ObjectKey(it.upiApplication),
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => _onTap(it),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[


                                    Image.memory(
                                      it.icon,
                                      width: 64,
                                      height: 64,
                                    ),

                                  ],
                                ),
                              ),
                            ))
                                .toList(),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],

            ),
            
          ),

        ],


      ),

    );




  }





}
String _validateUpiAddress(String value) {
  if (value.isEmpty) {
    return 'UPI Address is required.';
  }

  if (!UpiPay.checkIfUpiAddressIsValid(value)) {
    return 'UPI Address is invalid.';
  }

  return null;
}


