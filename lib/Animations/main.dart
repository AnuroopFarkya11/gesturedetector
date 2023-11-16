import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gesturedetector/Animations/animationCard.dart';
import 'package:gesturedetector/Animations/Effects/fadeEffect.dart';
import 'package:gesturedetector/Animations/Effects/slideRightEffect.dart';
import 'package:gesturedetector/Animations/styledText.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/main.dart';
import 'package:simple_animations/simple_animations.dart';

class AnimationApp extends StatelessWidget {
  const AnimationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String text;
  late TextEditingController textEditingController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    text = "";
    textEditingController = TextEditingController();
  }

  onPress(){
    setState(() {
      text = textEditingController.text;
    });
    print(textEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Animation"),
        backgroundColor: Colors.cyan.shade100,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                  hintText: "Enter some text",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: onPress,
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade100),
            ),
            SizedBox(
              height: 20,
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: [
                ///      Fade effect
               makeFadeAnimation(text: text),

                ///      Slide Effect
               makeSlideEffect(text: text)
              ],
            ),
          ],
        ),
      ),
    );
  }
}



