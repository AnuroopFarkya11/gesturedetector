import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  ShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Shimmer.fromColors(
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.grey[100]!,


            child: SafeArea(
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                            ),
SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 10,width: 150,
                                  color: Colors.black54,
                                ),SizedBox(height: 10,),Container(
                                  height: 10,width: 70,
                                  color: Colors.black54,
                                ),

                              ],
                            ),
                          ],
                        ),

                        CircleAvatar(radius: 7,)



                      ],


                    ),
                  )




              ),
            )),
      ],
    );
  }
}
/*
* Shimmer.fromColors(
        baseColor: Colors.grey[400]!,
        highlightColor: Colors.grey[100]!,
        child: Center(
          child: Container(
            height: 20,
            color: Colors.black54,
          ),
        ))
*
* */

/*ListTile(
                leading: const CircleAvatar(
                  radius: 55,
                ),
                title: Container(
                  color: Colors.black54,
                  height: 12,
                  width: 10,
                  // child: ,
                ),
                subtitle: Container(
                  color: Colors.black54,
                  height: 12,
                  child: SizedBox(
                    width: 20,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 5,
                ),
                horizontalTitleGap: -10,
                minLeadingWidth: 50,
              )
* */