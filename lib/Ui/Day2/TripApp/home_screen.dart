import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  onScroll() {
    print("Scrolling");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    )..addListener(onScroll);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              "https://images.pexels.com/photos/16777741/pexels-photo-16777741/free-photo-of-a-person-walking-on-a-white-sand-dune.jpeg?auto=compress&cs=tinysrgb&w=1600"),
          makePage(
              "https://images.pexels.com/photos/2132126/pexels-photo-2132126.jpeg?auto=compress&cs=tinysrgb&w=1600"),
          makePage(
              "https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&w=1600"),
        ],
      ),
    );
  }

  makePage(image) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.1,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "/4",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "USA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15.h,
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
