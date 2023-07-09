import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:gesturedetector/CheckInternet/Homescreen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
class NetCheckSplashScreen extends StatefulWidget {
  const NetCheckSplashScreen({Key? key}) : super(key: key);

  @override
  State<NetCheckSplashScreen> createState() => _NetCheckSplashScreenState();
}



class _NetCheckSplashScreenState extends State<NetCheckSplashScreen> {

  late StreamSubscription subscription;
  var isDeviceConnected=false;
  bool isAlertSet = false;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConnectivity();
  }
  getConnectivity() {
    log("Connection status: PENDING");

    Timer.periodic(Duration(seconds: 8), (timer) {Connectivity().checkConnectivity().then((value){
      var snackBar=SnackBar(content: Text("Turn on your internet connection"),);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      log("Check Connectivity status: ${value.toString()}");
    }); });


    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async{

      isDeviceConnected = await InternetConnectionChecker().hasConnection;
      if(isDeviceConnected){
        log("Connection status:$isDeviceConnected, Connection successful!!");
        isAlertSet = true;
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NetHomeScreen()));
        });
      }else{
        log("Connection status:$isDeviceConnected, Connection failed!");
      }

    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    subscription.cancel();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [

        Center(
          child: CircularProgressIndicator(),
        )

      ],
    );
  }

}
