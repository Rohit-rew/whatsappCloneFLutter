import 'package:flutter/material.dart';

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
          const SizedBox(
            width: 150,
            child: TextField(
              maxLength: 6,
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Enter 6-digit code"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: InkWell(
              onTap: () {
                print("Resend message");
              },
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
          ),
          const Divider(color: Colors.black45),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: InkWell(
              onTap: () {
                print("call me");
              },
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
            ),
          )
        ],
      ),
    );
  }
}
