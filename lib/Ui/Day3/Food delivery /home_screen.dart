import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'animations/fade_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: const Icon(null),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket_rounded,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Animate(
                    effects: [FadeEffect()],
                    child: Text(
                      "Food Delivery",
                      style: TextStyle(
                          color: Colors.grey[80],
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Animate(
                          effects: [FadeEffect()],
                          child: makeCategory(isActive: true, title: "Pizza"),
                        ),
                        Animate(
                          effects: [SlideEffect(curve: Curves.elasticIn)],
                          child: makeCategory(isActive: false, title: "Burger"),
                        ),
                        Animate(
                          effects: [SlideEffect(curve: Curves.elasticIn)],
                          child: makeCategory(isActive: false, title: "Kebab"),
                        ),
                        Animate(
                          effects: [SlideEffect(curve: Curves.elasticIn)],
                          child: makeCategory(isActive: false, title: "Salad"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Animate(
                effects: [FadeEffect()],
                child: Text(
                  "Free Delivery",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Animate(effects: [FadeEffect(delay: Duration(milliseconds: 100))],child: makeItem(image: "https://raw.githubusercontent.com/afgprogrammer/Flutter-food-delivery-app-ui/master/assets/images/one.jpg")),
                  // Animate(effects: [FadeEffect(delay: Duration(milliseconds: 200))],child: makeItem(image: "https://raw.githubusercontent.com/afgprogrammer/Flutter-food-delivery-app-ui/master/assets/images/two.jpg")),
                  Animate(effects: [FadeEffect(delay: Duration(milliseconds: 300))],child: makeItem(image: "https://raw.githubusercontent.com/afgprogrammer/Flutter-food-delivery-app-ui/master/assets/images/three.jpg")),
                  makeItem(image: "https://raw.githubusercontent.com/afgprogrammer/Flutter-food-delivery-app-ui/master/assets/images/one.jpg").animate(
                    delay: Duration(milliseconds: 500)
                  ).fadeIn(
                    delay: Duration(milliseconds: 100)
                  ).slide(
                    begin: Offset(1, 0),
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    delay: Duration(milliseconds: 100)
                  ).animate(onPlay: (controller)=>controller.repeat()).shimmer(duration: 2400.ms)
                ],
              ),
            )),
            SizedBox(height: 30.h,)

          ],
        ),
      ),
    );
  }
}

Widget makeItem({required String image}) {
  return AspectRatio(aspectRatio: 1.2.w / 1.6.h, child: GestureDetector(
    child: Container(
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
            begin: Alignment.bottomCenter,
              stops: [.2,.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ]

          )
        ),

        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite,color: Colors.white,),
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$ 15.00",style: TextStyle(color: Colors.white,fontSize: 40.sp,fontWeight: FontWeight.bold),),
                  Text("Vegetarian Pizza",style: TextStyle(color: Colors.white,fontSize: 20.sp,),),
                ],
              )
            ],
          ),
        ) ,
      ),
    ),
  ),);
}

Widget makeCategory({required bool isActive, required String title}) {
  return AspectRatio(
    aspectRatio: isActive ? 3 : 2.5 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50.r)),
      child: Align(
        child: Text(
          title,
          style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontSize: 18,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
        ),
      ),
    ),
  );
}
