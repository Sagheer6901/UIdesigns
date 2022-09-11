
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uidesign/Screens/MessageScreen/message_screen.dart';
import 'package:uidesign/Screens/PackageScreen/package_screen.dart';
import 'package:uidesign/Screens/pickup_screen.dart';
import 'package:uidesign/constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_){
    runApp(MyApp());
  });
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: contentColor,
          centerTitle: true,
          title: Text(
            "UI Design Screens",
            style: TextStyle(color: primaryColor),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dehaze,
                  color: primaryColor,
                ))
          ],
          bottom: PreferredSize(
              child: Container(
                // color: Colors.blue,
                height: 2.0,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(5, 7), // changes position of shadow
                    ),
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(15)),
        ),

        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Screens", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor),),
              Column(
                children: [

                  ElevatedButton(onPressed: (){
                    Get.to(()=>PickUpScreen());
                  }, child: Text("PickUp Screen")),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){
                    Get.to(()=>MessageScreen());
                  }, child: Text("Message Screen")),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){
                    Get.to(()=>PackageScreen());
                  }, child: Text("Package Screen")),
                ]
              ),
              SizedBox(height: 5,)
            ],
          ),
        ),
      )),
    );
  }
}