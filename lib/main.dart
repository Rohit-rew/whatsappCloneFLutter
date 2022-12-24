import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Whatsapp Clone",
    home: AuthView(),
  ));
}

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthView();
}

class _AuthView extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        elevation: 0,
        title: const Text(
          "Phone number",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Done",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: Text(
              "Please select your country code and enter your mobile number",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 124, 124, 124),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "United States",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 124, 124, 124),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: const [
                Text(
                  "+91",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                VerticalDivider(
                  thickness: 10,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 320,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 124, 124, 124),
          ),
        ],
      ),
    );
  }
}
