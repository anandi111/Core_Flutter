import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../logic/logic.dart';
import 'full_view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Resource = "assest/bare-necessities-song-scene-the-jungle-book-2.mp4";
  List<VideoPlayerController> controllers = [];
  List<ChewieController> chewieControllers = [];

  @override
  void initState() {
    super.initState();
    List.generate(
        6,
        (index) => controllers
            .add(VideoPlayerController.asset(videoList[index].Resource)));
    List.generate(
        6,
        (index) =>
            controllers[index].initialize().then((value) => setState(() {})));
    List.generate(
        6,
        (index) => chewieControllers
            .add(ChewieController(videoPlayerController: controllers[index])));
    /*_controller = VideoPlayerController.asset(Resource);
    _chewieController = ChewieController(videoPlayerController: _controller);*/
    /* _controller.initialize().then((value) => setState(() {}));*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("MyTube"),
        ),
        body: ListView.builder(
            itemCount: videoList.length,
            itemBuilder: (context, index) {
              /* controllers
                  .add(VideoPlayerController.asset(videoList[index].Resource));
              controllers[index].initialize().then((value) => setState(() {}));
              chewieControllers.add(
                  ChewieController(videoPlayerController: controllers[index]));*/
              return Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  AspectRatio(
                    aspectRatio: controllers[index].value.aspectRatio,
                    child: Chewie(
                      controller: chewieControllers[index],
                    ),
                  ),
                  InkWell(
                    child: ListTile(
                      onTap: () async {
                        print(index);
                        /*    print(
                            "${controllers[index]} ${controllers.length},heloo output comes to you");*/
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FullScreen(
                                  chewieController: chewieControllers[index],
                                  Resource: videoList[index].Resource),
                            ));
                      },
                      title: Text(videoList[index].name),
                      subtitle: Text(videoList[index].content),
                      /*leading: AspectRatio(
                        aspectRatio: controllers[index].value.aspectRatio,
                        child: VideoPlayer(controllers[index]),
                      ),*/
                      trailing: InkWell(
                          onTap: () {
                            controllers[index].play();
                          },
                          child: Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.orange,
                          )),
                    ),
                  )
                ],
              );
            }));
  }
}
