import 'package:flutter/material.dart';

class twitterr extends StatefulWidget {
  const twitterr({super.key});

  @override
  State<twitterr> createState() => _twitterrState();
}

class _twitterrState extends State<twitterr> {
  @override
  Widget build(BuildContext context) {
    dynamic screenwidth = MediaQuery.of(context).size.width;
    dynamic screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 0, bottom: 0)),

          Container(
            padding: EdgeInsets.only(top: 0, right: 90, left: 20, bottom: 50),
            child: Text(
              "Create your account",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          //name textinput formfield
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenwidth * 0.8,
                height: 60, //60
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Name',
                  ),
                ),
              ),
            ],
          ),
          //phone number textinput formfield
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "phone",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 16.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    width: screenwidth * 0.8,
                    height: 60, //60
                  ),
                ],
              )
            ],
          ),
          //email texted form
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 35, top: 5),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Use email instead",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          //date of birth
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    padding: EdgeInsets.only(left: 45),
                    width: screenwidth * 0.8,
                    height: 50,
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
          // .\n ama bo line break bakar yat bo text la flutter a war <br> y html
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: screenwidth * 0.8,
                height: 60,
                padding: EdgeInsets.only(left: 45, bottom: 10),
                child: Text(
                  "This will not be shown publicly . Confirm your own age, even if this account is for a business , a pet or  something else",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 0,
            thickness: 1,
            indent: 4,
            endIndent: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    bottom: 20,
                  )),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: screenheight * 0.4,
                    height: 60, //60
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),

                        primary: Colors.black,
                        backgroundColor: Colors.white, // Text Color
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
