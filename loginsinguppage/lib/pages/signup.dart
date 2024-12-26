import 'package:flutter/material.dart';
import 'package:loginsinguppage/pages/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 40),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffb51837),
        Color(0xff661c3a),
        Color(0xff301939),
      ], begin: Alignment.topLeft, end: Alignment.topRight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Create Your\nAccount!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 30, top: 40, right: 30),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                      color: Color(0xffb51837),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Name",
                          prefixIcon: Icon(Icons.person_outline)),
                    )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                      color: Color(0xffb51837),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          prefixIcon: Icon(Icons.email_outlined)),
                    )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      color: Color(0xffb51837),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          prefixIcon: Icon(Icons.password_outlined)),
                    )),
                SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      Color(0xffb51837),
                      Color(0xff661c3a),
                      Color(0xff301939),
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                  ),
                  child: Center(
                      child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn(),
                                  ));
                            },
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 4, 71, 126),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
