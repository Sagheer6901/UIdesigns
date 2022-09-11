import 'package:flutter/material.dart';
import 'package:uidesign/constants.dart';

class PackageCard extends StatelessWidget {
   PackageCard({Key? key}) : super(key: key);
  var h,w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,),
      height: h*0.23,
      decoration: BoxDecoration(
        color: contentColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 5), // changes position of shadow
          ),

        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: double.infinity,

              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: contentColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.25),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 5), // changes position of shadow
                  ),

                ],
              ),
              child:Container(
                height: double.infinity,

                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              child: Image.asset("assets/images/product.png"),
              )
              // child: AssetImage(""),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
                // height: h*0.2,
                //
                margin: EdgeInsets.all(10),

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text("5 T-Shirts dry and Cleaning",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: primaryColor))),
                        Text("(\$60)",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: primaryColor
                            )),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Expanded(child: Text("You will get 10\$ off buy this package",
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: primaryColor))),
                    SizedBox(height: 10,),

                    Row(

                      children: [
                        Column(
                          children: [
                            Container(
                              height: h*0.06,
                              width: w*0.12,
                              decoration: BoxDecoration(
                                color: contentColor,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                boxShadow: [
                                  BoxShadow(
                                    color: secondaryColor.withOpacity(0.25),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),

                                ],
                              ),
                            child:  Container(
                              margin: EdgeInsets.all(1),
                              height: h*0.06,
                              width: w*0.12,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Image.asset("assets/images/wash.png"),
                            ),
                            ),
                            SizedBox(height: 5,),
                            Text("Wash",
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: primaryColor)),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Column(
                          children: [
                            Container(
                              height: h*0.06,
                              width: w*0.12,
                              decoration: BoxDecoration(
                                color: contentColor,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                boxShadow: [
                                  BoxShadow(
                                    color: secondaryColor.withOpacity(0.25),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),

                                ],
                              ),
                              child:  Container(
                                margin: EdgeInsets.all(1),
                                height: h*0.06,
                                width: w*0.12,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Image.asset("assets/images/drycleaner.png"),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("DryCleaning",
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: primaryColor)),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Column(
                          children: [
                            Container(
                              height: h*0.06,
                              width: w*0.12,
                              decoration: BoxDecoration(
                                color: contentColor,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                boxShadow: [
                                  BoxShadow(
                                    color: secondaryColor.withOpacity(0.25),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),

                                ],
                              ),
                              child:  Container(
                                margin: EdgeInsets.all(1),
                                height: h*0.06,
                                width: w*0.12,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Image.asset("assets/images/iron.png"),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Iron",
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: primaryColor)),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              // child: AssetImage(""),
            ),
          )
        ],
      ),
    );
  }
}
