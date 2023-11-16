import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesturedetector/Ui/Day3/Food delivery /home_screen.dart';
import 'package:page_transition/page_transition.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));

    _animation =
        Tween<double>(begin: 1.0, end: 25.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void onTap() {
    setState(() {
      _textVisible = false;
    });
    _animationController.forward().then((value) =>
        Navigator.push(context, PageTransition(child:HomeScreen() , type: PageTransitionType.fade)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://raw.githubusercontent.com/afgprogrammer/Flutter-food-delivery-app-ui/master/assets/images/starter-image.jpg",
                ))),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.2),
          ])),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScaleTransition(
                  scale: _animation,
                  child: Animate(
                    delay: Duration(milliseconds: 1000),
                    effects: [FadeEffect()],
                    child: Text(
                      'Taking Order For Delivery',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'See restaurants nearby by \nadding location',
                  style: TextStyle(
                      color: Colors.white, height: 1.5.h, fontSize: 18.sp),
                ).animate().fade(delay: Duration(milliseconds: 1500)),
                SizedBox(
                  height: 60.h,
                ),
                Animate(
                  delay: Duration(milliseconds: 2500),
                  effects: [FadeEffect()],
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.orange])),
                    child: MaterialButton(
                      onPressed: () =>onTap(),
                      minWidth: double.infinity,
                      child: Text(
                        'Start',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Animate(
                  delay: Duration(milliseconds: 3000),
                  effects: [FadeEffect(), ShakeEffect()],
                  child: Align(
                    child: Text(
                      "Now Deliver to your Door 24/7",
                      style: TextStyle(color: Colors.white70, fontSize: 15.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
