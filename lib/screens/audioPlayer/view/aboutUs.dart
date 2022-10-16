import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        elevation: 00,
        backgroundColor: Color(0xff212121),
        title: Text('AboutUs'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hello,There Welcome to AmpAudio',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '   This is a AssetAudio Player You Can hear Music here But only Which i put in it.',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '   This is Made in Flutter by Jay Sardhara(Flutter Student).With the help of Android Studio(Flutter Plugin) Guided by Vidit Savaliya(Professor of Flutter).',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Developer : ',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/me.jpeg')),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Jay Sardhara',
                            style:
                                TextStyle(color: Color(0xffffffff), fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Flutter Student',
                            style:
                                TextStyle(color: Color(0xffffffff), fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go back & Hear Music',style: TextStyle(color: Colors.amberAccent),))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
