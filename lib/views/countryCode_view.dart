import 'package:flutter/material.dart';
import 'package:whatsappclonw/utils/country_codes.dart';

class ChooseCountryView extends StatefulWidget {
  const ChooseCountryView({super.key});

  @override
  State<ChooseCountryView> createState() => _ChooseCountryView();
}

class _ChooseCountryView extends State<ChooseCountryView> {
  late TextEditingController country;
  List _countriesCode = [];

  @override
  void initState() {
    country = TextEditingController();
    _countriesCode = countryCodes;
    super.initState();
  }

  @override
  void dispose() {
    country.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        elevation: 0,
        title: const Text(
          "Choose a Country",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.green, size: 30),
                SizedBox(
                  width: 290,
                  height: 50,
                  child: TextField(
                    controller: country,
                    onChanged: (value) {
                      List filtered = countryCodes.where((element) {
                        return element["name"]
                            .toString()
                            .toLowerCase()
                            .startsWith(value);
                      }).toList();
                      setState(() {
                        _countriesCode = filtered;
                      });
                    },
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: "Search",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(color: Colors.grey),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => {
                    Navigator.pop(context, _countriesCode[index]),
                  },
                  title: Text(_countriesCode[index]["name"]),
                  subtitle: Text(_countriesCode[index]["code"]),
                  trailing: Text(_countriesCode[index]["dial_code"]),
                );
              },
              itemCount: _countriesCode.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                  height: 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
