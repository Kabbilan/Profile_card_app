import 'package:flutter/material.dart';

class Contactinfo extends StatelessWidget {
  final IconData icon;
  final String text;
  const Contactinfo({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 12),
        Flexible(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            "MY PROFILE",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Card(
                color: Colors.white,
                elevation: 10.0,
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 75.0,
                        backgroundColor: Colors.blue.shade700,
                        child: Text(
                          'KM',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Kabbilan M",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "App Developer",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Contactinfo(
                            icon: Icons.email,
                            text: 'kabbilan@example.com',
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Contactinfo(
                            icon: Icons.phone,
                            text: '+91 1234567890',
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Contactinfo(
                            icon: Icons.code,
                            text: 'C, C++, Java, HTML, Css',
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Contactinfo(
                            icon: Icons.location_on,
                            text: 'Erode, Tamil Nadu',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
