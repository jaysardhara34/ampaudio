import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modal/audioModal.dart';
import '../provider/AudioProvider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var homeproviderfalse;
  var homeproviderTrue;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<AudioProvider>(context, listen: false);
    homeproviderTrue = Provider.of<AudioProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 00,
        backgroundColor: Color(0xff212121),
        title: Text('Amp Audio'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'info');
              },
              icon: Icon(Icons.info_outline))
        ],
      ),
      backgroundColor: Color(0xff212121),
      body: WillPopScope(
        onWillPop: dialog,
        child: ListView.builder(
          itemCount: homeproviderfalse.l1.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                homeproviderfalse.Datapick = Modeldata(
                    Name: homeproviderfalse.l1[index].Name,
                    Subtitie: homeproviderfalse.l1[index].Subtitie,
                    Image: homeproviderfalse.l1[index].Image,
                    Sub: homeproviderfalse.l1[index].Sub,
                    color: homeproviderfalse.l1[index].color,
                    Audio: homeproviderfalse.l1[index].Audio);
                Navigator.pushNamed(context, 'firat');
              },
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: homeproviderfalse.l1[index].color,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 8, left: 8, bottom: 8),
                            height: 60,
                            width: 60,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  homeproviderfalse.l1[index].Image,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    "${homeproviderfalse.l1[index].Name}",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "${homeproviderfalse.l1[index].Subtitie}",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  trailing: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.play_arrow_rounded,
                                        size: 20,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ));
  }

  Future<bool> dialog() async {
    back();
    return await false;
  }

  void back() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            content: Text(
              '!! You Really Want to Quit Amp Player ? !!',
              style: TextStyle(fontSize: 16),
            ),
            actions: [
              CupertinoButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Color(0xffff0000)),
                  ),
                  onPressed: () {
                    exit(0);
                  }),
              CupertinoButton(
                  child: Text('No'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }
}
