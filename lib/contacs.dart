import 'package:flutter/material.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';

class PhoneBookScreen extends StatefulWidget {
  const PhoneBookScreen({super.key});

  @override
  State<PhoneBookScreen> createState() => _PhoneBookScreenState();
}

class _PhoneBookScreenState extends State<PhoneBookScreen> {
  Future<void> _openPhoneBook() async {
    final FullContact? contact = await FlutterContactPicker.pickFullContact();
    if (contact != null) {
      print("Selected contact: ${contact.name}");
    } else {
      print("No contact slected");
    }
  }

  //@override
  @override
  void initState() {
    super.initState();
    _openPhoneBook();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("phonebook"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openPhoneBook,
          child: Text('OPEN PHONE BOOK'),
        ),
      ),
    );
  }
}
