import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UnicodeConversionDemo(),
    );
  }
}

class UnicodeConversionDemo extends StatelessWidget {
  String unicodeToASCII(String unicodeString) {
    StringBuffer asciiString = StringBuffer();
    for (int i = 0; i < unicodeString.runes.length; i++) {
      int codeUnit = unicodeString.runes.elementAt(i);
      asciiString.write(String.fromCharCode(codeUnit));
    }
    return asciiString.toString();
  }

  String asciiToUnicode(String asciiString) {
    StringBuffer unicodeString = StringBuffer();
    for (int i = 0; i < asciiString.runes.length; i++) {
      int codeUnit = asciiString.codeUnitAt(i);
      unicodeString.write(String.fromCharCode(codeUnit));
    }
    return unicodeString.toString();
  }

  @override
  Widget build(BuildContext context) {
    String unicodeSmiley = "😊"; // Unicode smiley

    String asciiEquivalent = unicodeToASCII(unicodeSmiley); // Convert Unicode to ASCII
    String convertedBack = asciiToUnicode(asciiEquivalent); // Convert ASCII back to Unicode

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Unicode to ASCII and back in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Unicode Smiley: $unicodeSmiley',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'ASCII Equivalent: $asciiEquivalent',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Converted Back: $convertedBack',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
