// ignore_for_file: must_be_immutable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:platform_convertor_11/Modules/utils/Platform_Provider/Provider/platform_provider.dart';
import 'package:provider/provider.dart';

class Material_Screen extends StatelessWidget {
  Material_Screen({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [
          Switch(
              value: Provider.of<PlatformProvider>(context, listen: true)
                  .platform
                  .isIos,
              onChanged: (val) {
                Provider.of<PlatformProvider>(context, listen: false)
                    .changePlatform();
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            TextButton(
                onPressed: () {
                  scaffoldKey.currentState?.showBottomSheet(
                    (context) => Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.camera),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.photo),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text("Show Bottom Sheet")),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (ctx) => Container(
                    height: 200,
                    width: double.infinity,
                  ),
                );
              },
              child: Text("Show Modal BottomSheet"),
            ),
          ],
        ),
      ),
    );
  }
}
