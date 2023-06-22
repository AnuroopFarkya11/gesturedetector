import 'package:flutter/material.dart';

class KuAppBar extends StatefulWidget {
  const KuAppBar({Key? key}) : super(key: key);

  @override
  State<KuAppBar> createState() => _KuAppBarState();
}

class _KuAppBarState extends State<KuAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff252D52),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: AnimatedOpacity(
              opacity: 1.00,
              duration: Duration(microseconds: 300),
              child: Text("Sign in"),
            ),
            pinned: true,
            // backgroundColor: Color(0xff252D52),
            expandedHeight: size.height * 0.3,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    color: Color(0xff252D52),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff252D52),
                        Colors.white,
                        Color(0xffF8C416),
                      ],
                      begin: Alignment.topLeft,
                      // end: Alignment.topLeft
                    ),

                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(

                          child: Image.asset("assets/kuhello.png",height: 250,),
                        bottom: -100,
                        right: 10,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child:Container(
              height:size.height,
              
              color: Colors.black.withOpacity(0.7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  TextField(),
                  TextField(),
                  TextField(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
