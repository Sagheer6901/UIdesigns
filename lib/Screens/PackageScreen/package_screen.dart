import 'package:flutter/material.dart';
import 'package:uidesign/Screens/PackageScreen/package_card.dart';
import 'package:uidesign/constants.dart';

class PackageScreen extends StatelessWidget {
   PackageScreen({Key? key}) : super(key: key);

  var h,w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: contentColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Package",
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
            preferredSize: Size.fromHeight(h * 0.01)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PackageCard(),
              SizedBox(height: 25,),
              PackageCard(),
              SizedBox(height: 25,),
              PackageCard(),
              SizedBox(height: 25,),
              PackageCard(),
              SizedBox(height: 25,),
              PackageCard(),
              SizedBox(height: 25,),
              PackageCard(),
              SizedBox(height: 25,),

            ],

          ),
        ),
      ),
    );
  }
}
