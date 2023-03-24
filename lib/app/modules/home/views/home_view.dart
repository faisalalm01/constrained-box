import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //getx flutter
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("Home"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 500,
              minHeight: 100,
              minWidth: 500,
            ),
            child: Container(
              height: 10000,
              color: Colors.red,
              child: Text(
                "pertama",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 166,
                  minHeight: 100,
                  minWidth: 166,
                ),
                child: Container(
                  height: 10000,
                  color: Colors.amber,
                  child: Text(
                    "pertama",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 166,
                  minHeight: 100,
                  minWidth: 166,
                ),
                child: Container(
                  height: 10000,
                  color: Colors.redAccent,
                  child: Text(
                    "pertama",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 166,
                  minHeight: 100,
                  minWidth: 166,
                ),
                child: Container(
                  height: 10000,
                  color: Colors.blueAccent,
                  child: Text(
                    "pertama",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}