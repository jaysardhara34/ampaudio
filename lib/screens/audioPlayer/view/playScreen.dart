import 'package:ampaudio/screens/audioPlayer/provider/AudioProvider.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  AudioProvider? topflase;
  AudioProvider? topTrue;

  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  Duration d1 = Duration(seconds: 0);

  @override
  void initState() {
    super.initState();

    assetsAudioPlayer.open(
      Audio(
          "${Provider.of<AudioProvider>(context, listen: false)!.Datapick?.Audio}"),
      autoStart: false,
      showNotification: true,
    );

    assetsAudioPlayer.current.listen((event) {
      d1 = event!.audio.duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    topflase = Provider.of<AudioProvider>(context, listen: false);
    topTrue = Provider.of<AudioProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.share_rounded))],
          elevation: 00,
          title: Text('Now Playing'),
          backgroundColor: Color(0xff212121),
          leading: IconButton(
              onPressed: () {
                assetsAudioPlayer.pause();
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
              )),
        ),
        backgroundColor: Color(0xff212121),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),surfaceTintColor: Color(
                  0xffff00c3),
                elevation: 5,shadowColor: Color(0xffffffff),
                child: Container(
                  height: 250,
                  width: 250,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("${topflase!.Datapick!.Image}",fit: BoxFit.cover,)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "${topflase!.Datapick?.Name}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "${topflase!.Datapick?.Sub}",
                      style: TextStyle(fontSize: 16, color: Colors.white60),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add_road,
                    color: Colors.white,
                  ),
                  Icon(Icons.wrap_text, color: Colors.white),
                  Icon(Icons.notifications, color: Colors.white),
                  Icon(Icons.more_vert, color: Colors.white),
                  InkWell(
                      onTap: () {
                        bottomsheetdilaog();
                      },
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              assetsAudioPlayer.builderCurrentPosition(
                  builder: (context, duration) {
                return Column(
                  children: [
                    Slider(
                        activeColor: Color(0xffffffff),
                        inactiveColor: Color(0xff525252),
                        max: d1.inSeconds.toDouble(),
                        value: duration.inSeconds.toDouble(),
                        onChanged: (value) {
                          assetsAudioPlayer
                              .seek(Duration(seconds: value.toInt()));
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 3, left: 20, bottom: 6, right: 6),
                          child: Text(
                            "${duration.inMinutes}:${duration.inSeconds > 60 ? duration.inSeconds - 60 : duration.inSeconds}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 3, left: 20, bottom: 6, right: 6),
                          child: Text(
                            "${d1.inMinutes}:${d1.inSeconds}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.repeat,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    CupertinoIcons.backward_end_fill,
                    color: Colors.white,
                    size: 30,
                  ),
                  IconButton(
                      onPressed: () {
                        topflase!.playpause();
                        if (topflase!.isplay == true) {
                          assetsAudioPlayer.play();
                        } else {
                          assetsAudioPlayer.pause();
                        }
                      },
                      icon: Icon(
                        topTrue!.isplay
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_fill,
                        color: Colors.white,
                        size: 40,
                      )),
                  Icon(
                    CupertinoIcons.forward_end_fill,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.menu_open_rounded,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void bottomsheetdilaog() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff212121),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Song details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.clear, color: Colors.white, size: 25)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                    child: Column(
                      children: [
                        Text('${topflase!.Datapick!.Name}',style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 10,),
                        Text(
                  "Submit your Feedback",
                  style: TextStyle(color: Colors.white),
                ),
                      ],
                    )),
                RatingBar(
                  minRating: 1,
                  maxRating: 5,
                  glowRadius: 3,
                  allowHalfRating: true,
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: Color(0xffc5a31a),
                    ),
                    empty: Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    half: halficon(),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.white,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Center(
                      child: Text("Submit Feedback",
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget halficon() => Image.asset("assets/image/star.webp");
}
