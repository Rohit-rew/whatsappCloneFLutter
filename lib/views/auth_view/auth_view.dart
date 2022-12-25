import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappclonw/views/auth_view/countryCode_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthView();
}

class _AuthView extends State<AuthView> {
  Map<String, String> _countryData = {
    "name": "India",
    "dial_code": "+91",
    "code": "IN"
  };

  late TextEditingController _phoneNumber;

  @override
  void initState() {
    _phoneNumber = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),
        elevation: 0,
        title: const Text(
          "Phone number",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  final fullNumber = _countryData["dial_code"].toString() +
                      _phoneNumber.text.toString();
                  print(fullNumber);
                },
                child: const Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
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
            onPressed: () async {
              Map<String, String> result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ChooseCountryView();
                  },
                ),
              );

              setState(
                () {
                  _countryData = result;
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _countryData["name"].toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(Icons.arrow_forward_ios),
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
                Text(
                  _countryData["dial_code"].toString(),
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const VerticalDivider(
                  thickness: 10,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: _phoneNumber,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                    ],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Phone number",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          style: BorderStyle.none,
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
