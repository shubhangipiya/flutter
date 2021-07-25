import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my cv app",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("my cv app"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30.0,
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage("assets/blue.jpg"),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Shubhangi Piya",
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "App Developer",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                              "hello, I am Shubhangi Piya. I am  web as well as app developer",
                              style: TextStyle()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Social Links",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Launch("www.facebook.com");
                        },
                        color: Colors.green,
                        icon: Icon(FontAwesomeIcons.facebook),
                      ),
                      IconButton(
                        onPressed: () {
                          Launch("www.twitter.com");
                        },
                        color: Colors.yellow,
                        icon: Icon(FontAwesomeIcons.twitter),
                      ),
                      IconButton(
                        onPressed: () {
                          Launch("www.linkedin.com");
                        },
                        color: Colors.blue,
                        icon: Icon(FontAwesomeIcons.linkedin),
                      ),
                      IconButton(
                        onPressed: () {
                          Launch("www.instagram.com");
                        },
                        color: Colors.orange,
                        icon: Icon(FontAwesomeIcons.instagram),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Skills",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlIaNER-MkBLopTtUEFI1Hmz_T0QYCeHVG39YcKXsVRxWr26kTER4WnIiBNLsVu93MYzY&usqp=CAU"),
                  ),
                  title: Text("Web Development"),
                  subtitle: Text("Html, CSS, JavaScript"),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://d540vms5r2s2d.cloudfront.net/mad/uploads/mad_blog_5df2190b8638a1576147211.jpg"),
                  ),
                  title: Text("App Development"),
                  subtitle: Text("Dart and flutter"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
