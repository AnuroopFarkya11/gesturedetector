import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class AnimatedBars extends StatefulWidget {
  @override
  _AnimatedBarsState createState() => _AnimatedBarsState();
}

class _AnimatedBarsState extends State<AnimatedBars> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _borderRadiusAnimation;
  bool _showTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _borderRadiusAnimation = Tween<double>(begin: 500.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      if (!_showTitle) {
        setState(() {
          _showTitle = true;
        });
        _animationController.forward();
      }
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      if (_showTitle) {
        setState(() {
          _showTitle = false;
        });
        _animationController.reverse();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: _showTitle ? 1.0 : 0.0,
                child: Text('Title'),
              ),
              floating: true,
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height / 2,
              flexibleSpace: AnimatedBuilder(
                animation: _borderRadiusAnimation,
                builder: (BuildContext context, Widget? child) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(_borderRadiusAnimation.value),
                      ),
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 100,
              ),
            ),
          ],
        ),
      );
  }
}
