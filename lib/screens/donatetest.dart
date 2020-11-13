import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:upi_india/upi_india.dart';
import 'package:status_alert/status_alert.dart';


class DonateTestScreen extends StatefulWidget {
  @override
  _DonateTestScreenState createState() => _DonateTestScreenState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(100, 13, 216,60), Color.fromARGB(100, 13, 209, 180), Color.fromARGB(100, 0, 212, 255)],
).createShader(Rect.fromLTWH(75.0, 50.0, 200.0, 70.0));

class _DonateTestScreenState extends State<DonateTestScreen> {
  Future<UpiResponse> _transaction;
  UpiIndia _upiIndia = UpiIndia();
  List<UpiApp> apps;

  TextStyle header = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle value = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );



  final _upiAddressController = TextEditingController();
  final _amountController = TextEditingController();



  void initState() {
    _upiAddressController.text = "amanzishan@oksbi";
    _amountController.text =
    "100";
    _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      setState(() {
        apps = value;
      });
    }).catchError((e) {
      apps = [];
    });
    super.initState();
  }




  @override
  void dispose() {
    _amountController.dispose();

    super.dispose();
  }
  Future<UpiResponse> initiateTransaction(UpiApp app) async {

    return _upiIndia.startTransaction(
      app: app,
      receiverUpiId: "amanzishan@oksbi",
      receiverName: 'Aman',
      transactionRefId: 'TestingUpiIndiaPlugin',
      transactionNote: 'Not actual. Just an example.',
      amount: double.parse(_amountController.text),
    );
  }

  Widget displayUpiApps() {
    if (apps == null)
      return Center(child: CircularProgressIndicator());
    else if (apps.length == 0)
      return Center(
        child: Text(
          "No apps found to handle transaction.",
          style: header,
        ),
      );
    else
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Wrap(
            children: apps.map<Widget>((UpiApp app) {
              return GestureDetector(
                onTap: () {
                  _transaction = initiateTransaction(app);
                  setState(() {});
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.memory(
                        app.icon,
                        height: 60,
                        width: 60,
                      ),

                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
  }

  String _upiErrorHandler(error) {
    switch (error) {
      case UpiIndiaAppNotInstalledException:
        return 'Requested app not installed on device';
      case UpiIndiaUserCancelledException:
        return 'You cancelled the transaction';
      case UpiIndiaNullResponseException:
        return 'Requested app didn\'t return any response';
      case UpiIndiaInvalidParametersException:
        return 'Requested app cannot handle the transaction';
      default:
        return 'An Unknown error has occurred';
    }
  }

  void _checkTxnStatus(String status) {
    switch (status) {
      case UpiPaymentStatus.SUCCESS:
        return StatusAlert.show(
          context,
          duration: Duration(seconds: 2),
          title: 'payment successful',
          subtitle: '',
          configuration: IconConfiguration(icon: Icons.done),
        );

        break;
      case UpiPaymentStatus.SUBMITTED:
        print('Transaction Submitted');
        break;
      case UpiPaymentStatus.FAILURE:
        return StatusAlert.show(
          context,
          duration: Duration(seconds: 2),
          title: 'Payment failed',
          subtitle: '',
          configuration: IconConfiguration(icon: Icons.cancel),
        );
        break;
      default:
        print('Received an Unknown transaction status');
    }
  }

  Widget displayTransactionData(title, body) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title: ", style: header),
          Flexible(
              child: Text(
                body,
                style: value,
              )),
        ],
      ),
    );
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

            padding:  const EdgeInsets.only(top: 280,left: 20,right: 20),child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Expanded(
              child: Text("Name : Palliative care clinic \nAccount number : xxx xxx xxx \nBranch : xx xxx xxx \nIFSC code: xx xx xxx xx  ",
                style: TextStyle(color: Colors.black,fontSize: 15),


              ),
            ),
],
    ),),

      Container( padding: EdgeInsets.only(top: 400,left: 20,right: 20), child:Column(
               children:[  TextFormField(
                    style: TextStyle(color: Colors.grey),
                    controller: _upiAddressController,
                    enabled: false,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(),
                      hintText: 'address@upi',
                      labelText: 'UPI Address',

                    ),
                  ), SizedBox(height: 15,),
      TextField(
                    controller: _amountController,

                    enabled: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Amount',
                    ),
                  ),
                ],),),

          Container(
            padding:  const EdgeInsets.only(top: 560,left: 20,right: 20),

            child: Column(
              children: <Widget>[Expanded(child: displayUpiApps(),
              ),
                Expanded(
                    child: FutureBuilder(
                      future: _transaction,
                      builder: (BuildContext context, AsyncSnapshot<UpiResponse> snapshot){
                        if (snapshot.connectionState == ConnectionState.done){
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                _upiErrorHandler(snapshot.error.runtimeType),
                                style: header,
                              ), // Print's text message on screen
                            );
                          }




                          else return Center(child: copyright,);


                        } else
                          return Center(child: copyright);



                      },

                    )),
              ],
            ),
      ),],),
    );
  }
}




