import 'package:flutter/material.dart';
import 'package:whatsappclonw/views/auth_view/auth_view.dart';
import 'package:whatsappclonw/utils/country_codes.dart';
import 'package:whatsappclonw/views/auth_view/countryCode_view.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Whatsapp Clone",
    home: AuthView(),
  ));
}
