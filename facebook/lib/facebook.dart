import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class UI extends StatefulWidget {
  const UI({super.key});

  @override
  State<UI> createState() => _facebookState();
}

class _facebookState extends State<UI> {
  bool IsRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Email",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 11, 180, 247),
              ),
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        )
      ],
    );
  }

//build password

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Paasword",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromARGB(255, 59, 201, 245),
              ),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        )
      ],
    );
  }

  Widget buildforgotpassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: (() => print("Forgot Password Pressed")),
        child: Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      padding: EdgeInsets.only(right: 0),
    );
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: IsRememberMe,
              checkColor: Colors.red,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(
                  () {
                    IsRememberMe = value!;
                  },
                );
              },
            ),
          ),
          Text(
            "Remember me ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      width: 800,
      height: 140,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white, // background (button) color
          foregroundColor: Color.fromARGB(255, 30, 189, 252),
          shadowColor: Colors.black,

          // foreground (text) color
        ),
        onPressed: () => print('pressed'),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget createnewacc() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: (() => print("you pressed")),
            child: Text(
              "Create account",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 1, 149, 248),
                        Color.fromARGB(255, 30, 189, 252),
                        Color.fromARGB(255, 70, 209, 252),
                        Color.fromARGB(255, 104, 216, 250)
                        //  Color(0x665ac18e),
                        //  Color(0x995ac18e),
                        //  Color(0xcc5ac18e),
                        //  Color(0xff5ac18e),
                      ],
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        buildEmail(),
                        SizedBox(
                          height: 20,
                        ),
                        buildPassword(),
                        buildforgotpassBtn(),
                        buildRememberCb(),
                        buildLoginBtn(),
                        SizedBox(
                          height: 0,
                        ),
                        createnewacc(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          value: SystemUiOverlayStyle.light),
    );
  }
}
