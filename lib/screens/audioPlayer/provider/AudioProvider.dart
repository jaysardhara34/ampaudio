import 'package:ampaudio/screens/audioPlayer/modal/audioModal.dart';
import 'package:flutter/material.dart';

class AudioProvider extends ChangeNotifier {
  bool isplay = false;

  void playpause() {
    isplay = !isplay;
    notifyListeners();
  }

  List<Modeldata> l1 = [
    Modeldata(
        Name: "Konoha Peace(Kato cover)...",
        Subtitie: "Kato-Lofi",
        Audio: "assets/music/Konoha Peace (Kato Cover).mp3",
        Image: "assets/image/naruto.jpg",
        Sub: "Naruto Vibes, Kato-Instruments ",
        color: Colors.amberAccent),
    Modeldata(
        Name: "Gangsta's paradise(ins...",
        Subtitie: "Colio, Lofi",
        Audio: "assets/music/Gangsta's Paradise - Coolio _ Lofi Fruits Music _ Lofi Chill _ Lofi Girl _ Lofi Chill Beats _.mp3",
        Image: "assets/image/gpara.jpg",
        Sub: "Lofi Fruits Music",
        color: Colors.blueAccent),
    Modeldata(
        Name: "Grunge-Kimetsu No Yaiba...",
        Subtitie: "Lofi Beats",
        Audio: "assets/music/Demon Slayer- Kimetsu no Yaiba - Kamado Tanjirou No Uta (ASO Remix) (128kbps).mp3",
        Image: "assets/image/ds.jpg",
        Sub: "Demon Slayer(Kimetsu No Yaiba)",
        color: Colors.lightGreenAccent),
    Modeldata(
        Name: "FairyTale",
        Subtitie: "M5MusicLable",
        Audio: "assets/music/Fairytale.mp3",
        Image: "assets/image/fai.jpg",
        Sub: "Alexzander ryback",
        color: Colors.lightBlueAccent),
    Modeldata(
        Name: "Hymn For The  Weekend ",
        Subtitie: "Coldplay",
        Audio: "assets/music/Hymn For The Weekend.mp3",
        Image: "assets/image/cold.jpg",
        Sub: "Coldplay in india",
        color: Colors.redAccent),
    Modeldata(
        Name: "Pasoori-Coke Studio S14",
        Subtitie: "Coke Studio",
        Audio: "assets/music/Pasoori _ Ali Sethi x Shae Gill.mp3",
        Image: "assets/image/pas.jpg",
        Sub: "Ali Shethi x Shea Gill",
        color: Colors.pinkAccent),
    Modeldata(
        Name: "Dekha ek khwab x Laila",
        Subtitie: "Mashup",
        Audio: "assets/music/Dekha Ek Khwab x Laila (Full Version) - Sush & Yohan x @oyeeditorranna  Mashup.mp3",
        Image: "assets/image/ll.jpg",
        Sub: "Sush & Yohan Mashup",
        color: Colors.purpleAccent),
    Modeldata(
        Name: "Blinding Lights",
        Subtitie: "The Weekend",
        Audio: "assets/music/Blinding Lights.mp3",
        Image: "assets/image/lights.png",
        Sub: "The Weekend",
        color: Colors.grey),
    Modeldata(
        Name: "One Dance",
        Subtitie: "Drake",
        Audio: "assets/music/MoneyHeistRingtoneBellaCiao568145647.mp3",
        Image: "assets/image/dance.jpg",
        Sub: "Drake,Wizkid & Kyla",
        color: Colors.greenAccent),
    Modeldata(
        Name: "Stereo Hearts",
        Subtitie: "Adam Levine",
        Audio: "assets/music/Stereo Hearts (feat. Adam Levine).mp3",
        Image: "assets/image/hearts.jpg",
        Sub: "Gym Class Heroes",
        color: Colors.amber),
    Modeldata(
        Name: "One Kiss",
        Subtitie: "Lyrics",
        Audio: "assets/music/One Kiss (Lyrics).mp3",
        Image: "assets/image/kiss.jpg",
        Sub: "Calvin Harris- Dua Lipa",
        color: Colors.blue),
    Modeldata(
        Name: "Perfect x Until mashup",
        Subtitie: "Mashup",
        Audio: "assets/music/Perfect X Until I Found You _ OyeEditorrAnna Mashup (Full Version) _ Shayad.mp3",
        Image: "assets/image/per.jpg",
        Sub: "Sush & Yohan Mashup",
        color: Colors.lime),
    Modeldata(
        Name: "Industry Baby × Nagada Sa..",
        Subtitie: "Mashup",
        Audio: "assets/music/Industry Baby × Nagada Sang Dhol🔥 (Sush & Yohan Mashup).mp3",
        Image: "assets/image/nagada.jpg",
        Sub: "Sush & Yohan Mashup",
        color: Colors.lightBlue),
    Modeldata(
        Name: "Begging",
        Subtitie: "Testo",
        Audio: "assets/music/Beggin'.mp3",
        Image: "assets/image/beg.jpg",
        Sub: "Maneskin",
        color: Colors.red),
    Modeldata(
        Name: "Dandelions",
        Subtitie: "Lofi Musics",
        Audio: "assets/music/Dandelions (slowed + reverb).mp3",
        Image: "assets/image/da.png",
        Sub: "Ruth B.",
        color: Colors.pink),
    Modeldata(
        Name: "Kesariya",
        Subtitie: "T series",
        Audio: "assets/music/Kesariya (From _Brahmastra_).mp3",
        Image: "assets/image/kes.jpg",
        Sub: "Arijit Singh, Pritam",
        color: Colors.purple),
    Modeldata(
        Name: "Infinity",
        Subtitie: "Reels Songs",
        Audio: "assets/music/Infinity.mp3",
        Image: "assets/image/inf.jpg",
        Sub: "James Young",
        color: Colors.grey),
    Modeldata(
        Name: "Love Nwantiti",
        Subtitie: "Remix Songs",
        Audio: "assets/music/Love Nwantiti Lyrics _ Ckay.mp3",
        Image: "assets/image/nwan.jpg",
        Sub: "Ckay",
        color: Colors.green),
    Modeldata(
        Name: "Middle Of The Night",
        Subtitie: "Vevo",
        Audio: "assets/music/MIDDLE OF THE NIGHT.mp3",
        Image: "assets/image/mon.jpg",
        Sub: "Elley Duhe",
        color: Colors.lightGreenAccent),
    Modeldata(
        Name: "Heat Waves",
        Subtitie: "Slow Songs",
        Audio: "assets/music/Glass Animals - Heat Waves.mp3",
        Image: "assets/image/heat.jpg",
        Sub: "Glass Elements",
        color: Colors.lightBlueAccent),
  ];

  List data = [];
  Modeldata? Datapick;
}
