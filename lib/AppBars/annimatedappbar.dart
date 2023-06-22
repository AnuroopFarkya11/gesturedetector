import 'package:flutter/material.dart';


class AnnimatedAppBars extends StatelessWidget {
  const AnnimatedAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 10,
                title: AnimatedOpacity(
                  duration: Duration(milliseconds: 300),
                  opacity: innerBoxIsScrolled ? 1.0 : 0.0,
                  child: Text('Title'),
                ),
                floating: true,
                pinned: true,
                expandedHeight: MediaQuery.of(context).size.height / 2,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: innerBoxIsScrolled?Radius.circular(0):Radius.circular(constraints.biggest.height / 2),
                        ),
                        color: Colors.blue,
                      ),
                    );
                  },
                ),
              ),
            ];
          },
          body: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      );

  }
}
