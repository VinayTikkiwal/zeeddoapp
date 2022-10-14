import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeeddo/utils/AllColours.dart';

import 'login.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Intro();
  }
}

class _Intro extends State<Intro> {
  int activeIndex = 0;
  List<MyItem> items = [
    MyItem('Enjoy The New \n Arrival Product', 'assets/images/banner1.png'),
    MyItem('Guaranteed Safe \n Delivery', 'assets/images/banner2.png'),
    MyItem('Goods Arrived \n On Time', 'assets/images/banner3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: items.length,
                options: CarouselOptions(
                  height: 400,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final imgList = items[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: buildImage(imgList.path, index)),
                      buildText(imgList.itemName, index),
                    ],
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Get your dream item easily and safely with Zeeddo. and get other interesting offer',
                  style: TextStyle(
                      color: ColorSelect.introtext_blue,
                      fontSize: 14,
                      fontFamily: 'Urbanist'),
                ),
              ),
              CarouselIndicator(
                count: items.length,
                index: activeIndex,
                width: 30,
                color: ColorSelect.grey_indicator,
                activeColor: ColorSelect.pink_indicator,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                width: double.infinity,
                height: 40,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: ColorSelect.pink_indicator),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'GOOGLE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'FACEBOOK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )

              // buildIndicator(),

              //buildText(itemName, index),
              // buildText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imgList, int index) => Container(
        color: Colors.transparent,
        child: Align(
          child: Image.asset(
            imgList,
            fit: BoxFit.cover,
          ),
        ),
      );

/*
  buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: items.length,
    effect: const JumpingDotEffect(
        dotColor: Colors.black,
        dotHeight: 15,
        dotWidth: 15,
        activeDotColor: mRed),
  );*/

  buildText(String itemName, int index) => Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              itemName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  fontFamily: 'Urbanist',
                  color: ColorSelect.pink_indicator),
            )),
      );
}

class MyItem {
  String itemName;
  String path;

  MyItem(this.itemName, this.path);
/*
  CarouselIndicator(
  count: imgList.length,
  index: pageIndex,
  color: ColorSelect.grey_indicator,
  activeColor: ColorSelect.pink_indicator,

  )*/
}
