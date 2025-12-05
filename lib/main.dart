import 'package:flutter/material.dart';
import 'package:login_ui/FadeAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "PlayfairDisplay"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.greenAccent,
                Colors.greenAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1,
                          Text(
                            "Login here",
                            style: TextStyle(fontSize: 41, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 5),
                        FadeAnimation(
                          1.3,
                          Text(
                            "Welcome back!",
                            style: TextStyle(
                              fontSize: 31,
                              color: Colors.white,
                              fontFamily: "Corinthia",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          FadeAnimation(1.4,Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios, size: 21, color: Colors.blue,),
                              Text("Return", style: TextStyle(fontSize: 21, color: Colors.blue),)
                            ],
                          ),),
                          SizedBox(height: 40),
                          FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Email or Username",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          FadeAnimation(
                            1.6,
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 50),
                          FadeAnimation(
                            1.7,
                            Container(
                              height: 50,
                              width: 250,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: TextButton(
                                onPressed: () {},
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
                          SizedBox(height: 20),
                          FadeAnimation(
                            1.8,
                            Text(
                              "Create new account",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(height: 80),
                          FadeAnimation(
                            1.8,
                            Text(
                              "Or continue with",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10),
                          FadeAnimation(
                            1.9,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.facebook,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
