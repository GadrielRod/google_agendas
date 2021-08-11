import 'package:flutter/material.dart';
import 'package:google_agenda/models/contacts.dart';
import 'package:google_agenda/style.dart';

class Details extends StatelessWidget {
  final Contacts _selectedContact;
  Details(this._selectedContact);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_selectedContact.isFavorite)
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: _selectedContact.name,
              child: Image.asset(_selectedContact.photo),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 16,
              ),
              child: Text(
                _selectedContact.name,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: grayTheme,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    _selectedContact.email,
                    style: TextStyle(
                      color: grayTheme,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
