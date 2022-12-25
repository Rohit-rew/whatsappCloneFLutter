import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              children: [
                const Text(
                  "+91",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const VerticalDivider(
                  thickness: 10,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 320,
                  child: TextField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                    ],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Phone number",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 250, 250, 250),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 250, 250, 250),
                        ),
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
