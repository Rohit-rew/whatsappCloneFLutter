import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:whatsappclonw/views/auth_view/auth_view.dart';
import 'package:whatsappclonw/utils/country_codes.dart';
import 'package:whatsappclonw/views/auth_view/countryCode_view.dart';

void main() async {
  await dotenv.load();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Whatsapp Clone",
    home: VerificationView(),
  ));
}

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationView();
}

class _VerificationView extends State<VerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Verify +919821443242",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              "Waiting to automatically detect an sms sent to +919821443242",
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Wrong Number ?"),
          ),
          const TextField(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Enter 6-digit code"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.message),
                Text(
                  "Resend message",
                  textAlign: TextAlign.left,
                ),
                Text("10:24")
              ],
            ),
          ),
          const Divider(color: Colors.black45),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.phone),
                Text(
                  "Call Me",
                  textAlign: TextAlign.left,
                ),
                Text("10:24")
              ],
            ),
          )
        ],
      ),
    );
  }
}
