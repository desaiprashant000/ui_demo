import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ani extends StatefulWidget {
  const ani({Key? key}) : super(key: key);

  @override
  State<ani> createState() => _aniState();
}

class _aniState extends State<ani> {
  bool c = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        c = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AnimatedContainer(
            onEnd: () {
              setState(() {
                c = !c;
              });
            },
            curve: Curves.linearToEaseOut,
            height: c ? 100 : 200,
            width: c ? 100 : 200,
            color: c ? Colors.amber : Colors.deepOrange,
            duration: Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}

class anima_list extends StatefulWidget {
  const anima_list({Key? key}) : super(key: key);

  @override
  State<anima_list> createState() => _anima_listState();
}

class _anima_listState extends State<anima_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            100,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(seconds: 2),
                columnCount: 2,
                child: ScaleAnimation(
                    child: ListTile(
                      title: Text("Item $index"),
                    ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40,
              color: Colors.deepOrange
            ),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Prashant'),
                  WavyAnimatedText('Nirav'),
                  WavyAnimatedText('avasar'),
                  WavyAnimatedText('avinash')
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
