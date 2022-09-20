import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset_Audio_player"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () async {
                try {
                  await assetsAudioPlayer.open(
                    Audio.network(
                        "https://soundcloud.com/cheezedj/malaa-who-i-am-lodgerz-remix-cheeze-edit?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing"),
                  );
                } catch (t) {
                  //mp3 unreachable
                  print("Unreacheble Song");
                }
              },
              icon: Icon(Icons.play_arrow_outlined))
        ],
      ),
    );
  }
}
