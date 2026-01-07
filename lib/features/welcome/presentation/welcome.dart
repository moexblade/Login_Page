import 'package:flutter/material.dart';
import 'package:login_ui/common/FadeAnimation.dart';
import '../../register/presentation/register.dart';
import '../../login/presentation/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Colors.greenAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FadeAnimation(
              1,
              Center(
                child: Text(
                  "Voyago",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: "GreatVibes",
                    shadows: [Shadow(color: Colors.black26, blurRadius: 20)],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: FadeAnimation(
                1.2,
                Text(
                  "Discover your dream destination \n     start your journey today",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "PlayfairDisplay",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    FadeAnimation(
                      1.3,
                      Container(
                        height: 50,
                        width: 300,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 0.5,
                              offset: Offset(0,0),
                              blurStyle: BlurStyle.outer
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    FadeAnimation(
                      1.4,
                      Container(
                        height: 50,
                        width: 300,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),

                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    FadeAnimation(
                      1.5,
                      Text(
                        "Continue as guest",
                        style: TextStyle(color: Colors.white, fontFamily: 'PlayfairDisplay', fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
