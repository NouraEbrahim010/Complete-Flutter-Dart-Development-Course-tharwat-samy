import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardapp());
}

class BusinessCardapp extends StatelessWidget {
  const BusinessCardapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        // appBar: AppBar(backgroundColor: Color(0xFF2B475E)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 115,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 113,
                backgroundImage: AssetImage('assets/images/tharwat.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Noura Ebrahim',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'flutter developer',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.teal.shade100,
              thickness: 2,
              indent: 80,
              endIndent: 80,
              height: 15,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Icon(Icons.phone, color: Color(0xFF2B475E)),
                title: Text(
                  '+20 111 222 3333',
                  style: TextStyle(
                    color: Color(0xFF2B475E),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Icon(Icons.email, color: Color(0xFF2B475E)),
                title: Text(
                  'noura@example.com',
                  style: TextStyle(
                    color: Color(0xFF2B475E),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
