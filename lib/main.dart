import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:whatsappclonw/views/auth_view/auth_view.dart';
import 'package:whatsappclonw/utils/country_codes.dart';
import 'package:whatsappclonw/views/auth_view/countryCode_view.dart';
import 'package:whatsappclonw/views/auth_view/varification_view.dart';

void main() async {
  await dotenv.load();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Whatsapp Clone",
    home: AuthView(),
  ));
}
