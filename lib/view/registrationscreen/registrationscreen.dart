import 'package:flutter/material.dart';
import 'package:ui_using_global/view/signinpage/signpage.dart';

List mydatabase = [];

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({super.key});

  @override
  State<Registrationscreen> createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {
  TextEditingController regnamecontroller = new TextEditingController();
  TextEditingController regpasscontroller = new TextEditingController();
  TextEditingController reregpasscontroler = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign Up for Free",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: regnamecontroller,
                  decoration: InputDecoration(
                      labelText: "Your Email Adress",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (regnamecontroller.text == null ||
                        regnamecontroller.text.isEmpty) {
                      return "invalid email adress";
                    } else if (!regnamecontroller.text.contains("@")) {
                      return "invalid email adress";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  controller: regpasscontroller,
                  decoration: InputDecoration(
                      labelText: "Your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (regpasscontroller.text == null ||
                        regpasscontroller.text.isEmpty) {
                      return "invalid password";
                    } else if (regpasscontroller.text.length < 6) {
                      return "invalid password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  controller: reregpasscontroler,
                  decoration: InputDecoration(
                      labelText: "Your Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (reregpasscontroler.text == null ||
                        reregpasscontroler.text.isEmpty) {
                      return "invalid password";
                    } else if (reregpasscontroler.text !=
                        regpasscontroller.text) {
                      return "password dosenot match";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                        Colors.blue,
                      )),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          mydatabase = [
                            regnamecontroller.text,
                            reregpasscontroler.text
                          ];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signpage(),
                              ));
                        }
                      },
                      child: Text(
                        "signup",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 260,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            iconColor: WidgetStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signpage(),
                              ));
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
