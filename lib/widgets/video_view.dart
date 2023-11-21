// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/widgets/colores.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video_View extends StatefulWidget {
  final String url;
  const Video_View({super.key, required this.url});

  @override
  State<Video_View> createState() => _Video_ViewState();
}

class _Video_ViewState extends State<Video_View> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.url,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,

      ),
    )..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_controller.value.playerState == PlayerState.ended) {
    }
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        onReady: (){
          _controller.addListener(() {
            
          });
        },
      ),
      builder: (context, player) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            player,
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.back();
              }, 
              child: Text('Cerrar video'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor
              ),
            )
          ],
        )
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}