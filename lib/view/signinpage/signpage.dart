import 'package:flutter/material.dart';
import 'package:ui_using_global/view/homepage/homepage.dart';
import 'package:ui_using_global/view/registrationscreen/registrationscreen.dart';

class Signpage extends StatefulWidget {
  const Signpage({super.key});

  @override
  State<Signpage> createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  TextEditingController signmailcontroller = new TextEditingController();
  TextEditingController signpasscontroller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign in to Your Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 60,
                ),
                TextFormField(
                  controller: signmailcontroller,
                  decoration: InputDecoration(
                      label: Text(
                        "your email adress",
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (signmailcontroller.text == null ||
                        signmailcontroller.text.isEmpty) {
                      return "invalid email adress";
                    } else if (!mydatabase.contains(signmailcontroller.text)) {
                      return "invalid email adress";
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  controller: signpasscontroller,
                  decoration: InputDecoration(
                      labelText: " enter Your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (signpasscontroller.text == null ||
                        signpasscontroller.text.isEmpty) {
                      return "invalid password";
                    } else if (!mydatabase.contains(signpasscontroller.text)) {
                      return "invalid password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  width: 250,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ));
                        }
                      },
                      child: Text("sign in")),
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            iconColor: WidgetStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Registrationscreen(),
                              ));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
