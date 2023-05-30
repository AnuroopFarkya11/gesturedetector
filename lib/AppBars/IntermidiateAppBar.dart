import 'package:flutter/material.dart';

class IntermidiateAppBar extends StatelessWidget {
  const IntermidiateAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            // pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/mountain.jpg",
                fit: BoxFit.fill,
              ),
              centerTitle: true,
              title: Text("App Bar"),
            ),
          ),

          /*SliverList(delegate: SliverChildListDelegate(

            List.generate(10, (index) => index%2==0?Container(height: 100,color: Colors.amber,):SizedBox(height: 100,))
          ))*/

          if(false)
          getBox()
          else
           getList()
          ,

         /*SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text('Non-scrollable widget'),
              ),
            ),
          ),*/


          /*SliverFixedExtentList(
            itemExtent: 80, // Set the fixed height of each item
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                // Return your item widget based on the index
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 20, // Specify the number of items in the list
            ),
          ),


          SliverPadding(
            padding: EdgeInsets.all(16.0), // Specify the padding around the sliver
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  // Return your item widget based on the index
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 20, // Specify the number of items in the list
              ),/*SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text('Non-scrollable widget'),
              ),
            ),
          ),*/
            ),
          ),*/

         /* SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Set the number of columns in the grid
              mainAxisSpacing: 10.0, // Set the spacing between grid items vertically
              crossAxisSpacing: 10.0, // Set the spacing between grid items horizontally
              childAspectRatio: 1.0, // Set the ratio of width to height for each grid item
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                // Return your grid item widget based on the index
                return Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
              childCount: 20, // Specify the number of items in the grid
            ),
          ),*/

        ],
      ),
    );
  }

  getBox() {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text('Non-scrollable widget'),
        ),
      ),
    );
  }

  getList(){
    return SliverFixedExtentList(
      itemExtent: 80, // Set the fixed height of each item
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          // Return your item widget based on the index
          return ListTile(
            title: Text('Item $index'),
          );
        },
        childCount: 20, // Specify the number of items in the list
      ),
    );


  }

}
