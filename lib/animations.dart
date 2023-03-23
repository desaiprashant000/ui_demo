import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_demo/dashborad.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> with TickerProviderStateMixin {
  // late AnimationController controller;
  // late Animation<double> animation;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   controller =
  //       AnimationController(duration: const Duration(seconds: 1), vsync: this);
  //   animation = new CurvedAnimation(parent: controller, curve: Curves.linear);
  //   controller.repeat();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return OpenContainer(
            transitionDuration: Duration(milliseconds: 500),
            openBuilder: (context, action) {
              return dashbord();
            },
            closedBuilder: (context, action) {
              return ListTile(
                title: Text("Item $index"),
              );
            },
          );
        },
        itemCount: 20,
      ),
    );
  }
}

// Center(
// child: GestureDetector(
// onTap: () {
// controller.repeat();
// },
// child: GFAnimation(
// turnsAnimation: animation,
// controller: controller,
// type: GFAnimationType.rotateTransition,
// alignment: Alignment.center,
// child: Image.network(
// 'https://clipart.world/wp-content/uploads/2020/08/Circle-Arrow-clipart-transparent-1.png',
// width: 80,
// height: 80,
// ),
// ),
// ),
// ),

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("first"),
      ),
    );
  }
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Second"),
      ),
    );
  }
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
/*
SharedAxisTransition(animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.scaled,
                child: child,
              );
 */
  bool firstpage = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('first'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
                child: const Text("Faded Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.leftToRight,
                    ),
                  );
                },
                child: const Text("Left To Right Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.rightToLeft,
                    ),
                  );
                },
                child: const Text("Right To Left Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.topToBottom,
                    ),
                  );
                },
                child: const Text("Top To Bottom Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                child: const Text("Bottom To Top Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.scale,
                      alignment: Alignment.bottomCenter,
                    ),
                  );
                },
                child: const Text("Scale Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: second(),
                        type: PageTransitionType.size,
                        alignment: Alignment.bottomCenter),
                  );
                },
                child: const Text("Size Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.rotate,
                      alignment: Alignment.center,
                    ),
                  );
                },
                child: const Text("Rotate Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.rightToLeftWithFade,
                    ),
                  );
                },
                child: const Text("Right To Left With Fade Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: second(),
                      type: PageTransitionType.leftToRightWithFade,
                    ),
                  );
                },
                child: const Text("Left To Right With Fade Navigation"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
