import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesturedetector/ScreenUtil/colors.dart';

class ScreenUtilApp extends StatelessWidget {
  const ScreenUtilApp({Key? key}) : super(key: key);

  Widget getTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0)),
          filled: true,
          fillColor: ColorsUtil.textFieldColor,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 52.h,
                      ),
                      Text(
                        "Sign up to Masterminds",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorsUtil.darkTextColor),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: ColorsUtil.lightTextColor),
                          ),
                          Text("Login",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsUtil.purpleColor))
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      getTextField("First Name"),
                      SizedBox(
                        height: 16.h,
                      ),
                      getTextField("Email Address"),
                      SizedBox(
                        height: 16.h,
                      ),
                      getTextField("Password"),
                      SizedBox(
                        height: 16.h,
                      ),
                      getTextField("Confirm Password"),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Create Account"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(ColorsUtil.purpleColor),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 14.h)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w700))),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                          )),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "or sign up via",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: ColorsUtil.lightTextColor),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/google_icon.png",height: 16.h,),
                            SizedBox(width: 10.w,),

                            Text("Google"),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor: MaterialStateProperty.all(
                                ColorsUtil.darkTextColor),
                            side: MaterialStateProperty.all(
                                BorderSide(color: ColorsUtil.borderColor)),
                            elevation: MaterialStateProperty.all(0),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 14.h)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500))),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "By signing up to Masterminds you agree to our ",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: ColorsUtil.lightTextColor),
                          ),
                          Text("terms and condition.",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsUtil.purpleColor))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
