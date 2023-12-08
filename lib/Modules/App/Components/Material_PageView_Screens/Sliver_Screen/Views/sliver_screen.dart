import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            collapsedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
                StretchMode.zoomBackground
              ],
              title: const Text(
                "Sliver Screen",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              background: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.dribbble.com/users/1161517/screenshots/7896076/media/24ae74ddb6c9eb7789ae3a189a6b30ae.gif",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 18,
              (context, index) => Container(
                height: 100,
                color: Colors.primaries[index],
              ),
            ),
            // delegate: SliverChildListDelegate(
            //   Colors.primaries
            //       .map((e) => Container(
            //             height: 200,
            //             color: e,
            //           ))
            //       .toList(),
            // ),
          )
        ],
      ),
    );
  }
}
