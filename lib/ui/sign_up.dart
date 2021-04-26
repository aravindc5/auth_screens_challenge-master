import 'package:auth_screens_challenge/const/prop.dart';
import 'package:auth_screens_challenge/ui/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: new BoxDecoration(
            gradient: signupPurpleGradient,
          ),
          child: AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 500),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 100.0,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: screenHeight * 0.37,
                    child: Center(
                        child:
                            Image.asset('assets/images/person_on_rocket.png')),
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    width: screenWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Hi there!',
                          style:
                              TextStyle(color: Colors.grey[100], fontSize: 20),
                        ),
                        Text(
                          'Let\'s Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.35,
                    width: screenWidth,
                    // color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 310,
                          child: TextField(
                            style: TextStyle(
                              height: 1.8,
                            ),
                            decoration: new InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.grey,
                                ),
                                // contentPadding:
                                //     const EdgeInsets.symmetric(vertical: 20.0),
                                border: new OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(40.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: new TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                hintText: "Username",
                                fillColor: Colors.white),
                          ),
                        ),
                        Container(
                          width: 310,
                          child: TextField(
                            style: TextStyle(
                              height: 1.8,
                            ),
                            decoration: new InputDecoration(
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.grey,
                                ),
                                // contentPadding:
                                //     const EdgeInsets.symmetric(vertical: 20.0),
                                border: new OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(40.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: new TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                hintText: "Password",
                                fillColor: Colors.white),
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 300, height: 60),
                          child: ElevatedButton(
                              child: Text("Create an Account",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(82, 67, 154, 1)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          side: BorderSide(
                                              color: Color.fromRGBO(82, 67, 154, 1))))),
                              onPressed: () => null),
                        ),
                        Container(
                          height: screenWidth * 0.05,
                          child: Text(
                            '----------------------------------    Or    ---------------------------------',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenWidth * 0.15,
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 300, height: 60),
                      child: ElevatedButton(
                          child: Text("Login",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(160, 148, 227, 1),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ))),
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => LoginScreen()))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
