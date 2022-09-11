import 'package:flutter/material.dart';
import 'package:uidesign/Widgets/custom_selection_button.dart';
import 'package:uidesign/Widgets/cutom_button.dart';
import 'package:uidesign/Widgets/date_card.dart';
import 'package:uidesign/constants.dart';

class PickUpScreen extends StatefulWidget {
  PickUpScreen({Key? key}) : super(key: key);

  @override
  State<PickUpScreen> createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  var h, w;
  List statuses = ["Every Week","Every Week","Every Week"];
  String? _mySelection="Every Week";
  List days = ["1","2","3"];
  String? _days="1";
  bool isSwitched = false;
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
          "Pickup Date",
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        "when would you like your pickup?",
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            color: textColor),
                      ),
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: primaryColor,
                      size: 35,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Container(
                child: Row(
                  children: [
                    DateCard("Fri", "24 Aug", "Yesterday", secondaryColor),
                    SizedBox(
                      width: w * 0.075,
                    ),
                    DateCard("Fri", "25 Aug", "Today", primaryColor),
                    SizedBox(
                      width: w * 0.075,
                    ),
                    DateCard("Fri", "26 Aug", "Tomorrow", Colors.red),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Center(
                child: Text("Available Time Slots",
                    style: TextStyle(fontSize: 18, color: textColor)),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Wrap(children: [
                CustomSelectionButton("7am-9pm",primaryColor,contentColor),
                CustomSelectionButton("7am-9pm",contentColor,textColor),
                CustomSelectionButton("7am-9pm",contentColor,textColor),
                CustomSelectionButton("7am-9pm",contentColor,textColor),
                CustomSelectionButton("7am-9pm",contentColor,textColor),


              ],),
              SizedBox(
                height: h * 0.03,
              ),
              Container(
                height: h*0.05,
                decoration: BoxDecoration(
                  color: contentColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: secondaryColor.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),

                  ],
                ),
                // width: w*0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.1),
                        Text("Every Week",
                            style: TextStyle(fontSize: 18, color: textColor)),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: secondaryColor,
                            activeColor: primaryColor,
                          ),
                        ),
                        SizedBox(width: 20,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.035,
              ),
              Row(
                children: [
                  SizedBox(width: w*0.05,),
                  Text("How Often Repeat?",
                      style: TextStyle(fontSize: 18, color: textColor)),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                height: h*0.05,
                decoration: BoxDecoration(
                  color: contentColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: secondaryColor.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),

                  ],
                ),
                // width: w*0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.1),
                        Text("$_mySelection",
                            style: TextStyle(fontSize: 18, color: textColor)),
                      ],
                    ),
                    Row(
                      children: [
                        DropdownButton<String>(
                            underline: SizedBox(),
                            style: const TextStyle(color: primaryColor, fontSize: 16),
                            // dropdownColor: kPrimaryColor,
                            items: statuses.map(
                                  (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Text(val),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                    () {
                                  _mySelection = val;
                                  print(_mySelection);
                                },
                              );
                            }),
                        SizedBox(width: 20,)
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: h * 0.035,
              ),
              Row(
                children: [
                  SizedBox(width: w*0.05,),
                  Text("How Many Times?",
                      style: TextStyle(fontSize: 18, color: textColor)),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                height: h*0.05,
                decoration: BoxDecoration(
                  color: contentColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: secondaryColor.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),

                  ],
                ),
                // width: w*0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.1),
                        Text("$_days",
                            style: TextStyle(fontSize: 18, color: textColor)),
                      ],
                    ),
                    Row(
                      children: [
                        DropdownButton<String>(
                          underline: SizedBox(),
                            // hint: _mySelection == null
                            //     ? Text("How Many Times?",
                            //     style: TextStyle(fontSize: 18, color: textColor))
                            //     : Text(_mySelection!,
                            //     style: const TextStyle(
                            //         color: primaryColor, fontSize: 16)),
                            style: const TextStyle(color: primaryColor, fontSize: 16),
                            // dropdownColor: kPrimaryColor,
                            items: days.map(
                                  (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Text(val),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                    () {
                                  _days = val;
                                  print(_days);
                                },
                              );
                            }),
                        SizedBox(width: 20,)
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              CustomButton("Continue",primaryColor,w*0.8,(){}),
            ],
          ),
        ),
      ),
    );
  }
}
