import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicPlay());
}

class MusicPlay extends StatelessWidget {
  const MusicPlay({Key? key}) : super(key: key);

  void playsound(int noteNo) {
    AudioPlayer().play(AssetSource('audio/note$noteNo.wav'));
  }

  Expanded buildKey({Color? color, int? no}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playsound(no!);
          },
          child: const Text(
            '!',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MusicPlay'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, no: 1),
              buildKey(color: Colors.orange, no: 2),
              buildKey(color: Colors.yellow, no: 3),
              buildKey(color: Colors.green, no: 4),
              buildKey(color: Colors.teal, no: 5),
              buildKey(color: Colors.blue, no: 6),
              buildKey(color: Colors.purple, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
