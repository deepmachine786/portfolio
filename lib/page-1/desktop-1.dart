// ignore_for_file: avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:url_launcher/url_launcher.dart';

final List<LayoutBuilder> getTheContainer = [
  // Container(
  //   child: Row(
  //     /**
  //      * Here Is use for the image of the container ...
  //      */
  //     children:[
  //       Container(
  //         margin : EdgeInsets.fromLTRB(0, 0,0,0),

  //       child: ClipRRect(
  //         borderRadius: BorderRadius.circular(90.0),
  //         child: Image.asset("assets/page-1/images/whatsapp.png", fit: BoxFit.contain,
  //         height: 180,
  //         width: 180,),
  //       ),),

  //       /**
  //        * Here is use for text of the experience ...
  //        */
  //       Container(
  //         margin:const  EdgeInsets.fromLTRB(0, 0, 0,0),
  //         child: Row(
  //           children: const [
  //             Text(
  //               'I have Experience in Software Engineer Intern at CodeClause.',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 fontWeight: FontWeight.w500,
  //                 letterSpacing: 0.25,
  //                 fontFamily: 'Product Sans',
  //               ),

  //             )
  //           ],
  //         ),
  //       ),
  //     ],
  //   ),

  // ), // change the container for the first experience ...
  // Container(),
  LayoutBuilder(
    builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth < 500) {
        return Column();
      } else if (BoxConstraints.maxWidth > 500 &&
          BoxConstraints.maxWidth < 900) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          height: 400,
          width: MediaQuery.of(BuildContext).size.width,
          child: Row(children: [
            FittedBox(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0,
                    0), // chnage the position from the first container ...
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                height: 400,
                width: 250,
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(90.0),
                      child: Image.asset(
                        "assets/page-1/images/gyujbgvems0qhq34sjn7ykhjs8rbertrcja8lhf9gtnc5brd0ac23ietapklcfujkgphmma7icyubsqrlxbvh2jlhw2opyk2f-fctbvd1ytmctad898bw252-rw-e365-v1.png",
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ), // this container for image ...

            const SizedBox(width: 20), // this is for Space ....

            FittedBox(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                height: 400,
                // because 20 are used in size box space so...
                // width: 600,
                width: MediaQuery.of(BuildContext).size.width - 600,
                child: Column(children: [
                  FittedBox(
                    child: Container(
                      // height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      // width: 500,
                      // width: MediaQuery.of(BuildContext).size.width,

                      child: AutoSizeText(
                        'Hello My name is Md Shahid Ali',
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 30,
                          height: 1.5,
                          letterSpacing: 0.25,
                        ),
                        maxLines: 1,
                        minFontSize: 15,
                        maxFontSize: 35,
                        // minFontSize: 12,
                      ),
                    ),
                  ), // this is for actual text ....
                  const SizedBox(
                      height:
                          20), // this is for Space between text and height...
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      // width : 600,
                      child: Column(
                        children: [
                          AutoSizeText(
                            'CodeClause\n\nSoftware Engineer Intern',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 10,
                              height: 1,
                              letterSpacing: 0.25,
                              color: Colors.black38,
                            ),
                            minFontSize: 5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              // shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                'Read More.',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 15,
                                  height: 1,
                                  letterSpacing: 0.25,
                                  color: Colors.blue,
                                ),
                              ),
                            ), // center th text in the containe ..
                          ),
                        ],
                      )),
                ]),
              ),
            ),

            // this container for text ..
          ]),
        );
      } else {
        return Container();
      }
    },
  ), // change the container for the second experience ....
];

List<Widget> gettheList() {
  return getTheContainer.map((element) => element).toList();
}

class Scene extends StatelessWidget {
  get style => null;
  // final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1450;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // desktop1xsr (1:2)
        padding: EdgeInsets.fromLTRB(0 * fem, 43 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        // child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupkuecQ7a (6kyNdVZ8oTjTk2E7WykUec)
              margin:
                  EdgeInsets.fromLTRB(100 * fem, 0 * fem, 0 * fem, 93 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                    height: 40 * fem,
                    width: 20 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90 * fem),
                      // child: Image.asset(
                      // 'assets/page-1/images/icon.png',
                      // 'assets/page-1/images/favicon.png',
                      // fit: BoxFit.cover,
                      // ),
                    ),
                  ),

                  Container(
                    // portfolio71z (1:4)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 800 * fem, 15 * fem),

                    child: Text(
                      'Portfolio',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 27 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.3636363636 * ffem / fem,
                        letterSpacing: 0.25 * fem,
                        // color: Color.fromARGB(255, 3, 3, 3),
                        color: Color(0xff3c4043),
                      ),
                    ),
                  ),

                  Container(
                    // aboutG3J (4:14)
                    // margin: EdgeInsets.fromLTRB(
                    //     10 * fem, 0 * fem, 15 * fem, 1.5 * fem),
                    // // padding: EdgeInsets.fromLTRB(
                    // //     0 * fem, 20 * fem, 0 * fem, 0 * fem),
                    // // height: 40 * fem,r

                    // child: Image.asset(
                    //   "assets/page-1/images/linkedin.png",
                    //   // fit: BoxFit.fill,
                    //   alignment: Alignment.center,
                    //   height: 40*fem,
                    //   width: 40*fem,
                    //   color: Colors.black,
                    // ),
                    margin: EdgeInsets.fromLTRB(
                        30 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: InkWell(
                      onTap: () {
                        launch("https://linkedin.com/in/mdshahidali");
                        decoration:
                        const BoxDecoration(
                          color: Color(0xfff000),
                        );
                      },
                      child: Image.asset(
                        "assets/page-1/images/linkedin.png",
                        // fit: BoxFit.fill,
                        alignment: Alignment.center,
                        height: 35 * fem,
                        width: 35 * fem,
                        // color: Colors.black,
                        color: Color(0xff3c4043),
                      ),
                    ),
                    // color: Color(0xff3c4043),
                  ),

                  Container(
                    // aboutG3J (4:14)
                    margin: EdgeInsets.fromLTRB(
                        30 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: InkWell(
                      onTap: () {
                        launch("https://github.com/deepmachine786");
                      },
                      child: Image.asset(
                        "assets/page-1/images/github.png",
                        // fit: BoxFit.fill,
                        alignment: Alignment.center,
                        height: 35 * fem,
                        width: 35 * fem,
                        // color: Colors.black,
                        color: Color(0xff3c4043),
                      ),
                    ),
                  ),
                  Container(
                    // aboutG3J (4:14)
                    margin: EdgeInsets.fromLTRB(
                        30 * fem, 0 * fem, 0 * fem, 0 * fem),
                    // child: TextButton(
                    //   onPressed: () {},
                    //   style: TextButton.styleFrom(
                    //     padding: EdgeInsets.zero,
                    //     foregroundColor: Color.fromARGB(15, 255, 255, 255),
                    //   ),
                    //   child: Text(
                    //     'Contact',
                    //     style: TextStyle(
                    //       fontFamily: 'Product Sans',
                    //       fontSize: 14.5 * ffem,
                    //       fontWeight: FontWeight.w500,
                    //       height: 1.2125 * ffem / fem,
                    //       letterSpacing: 0.42 * fem,
                    //       color: Color(0xff5f6368),
                    //     ),
                    //   ),
                    // ),
                    child: InkWell(
                      onTap: () {
                        launch("https://leetcode.com/technicalproduct786/");
                      },
                      child: Image.asset(
                        "assets/page-1/images/download.jpeg",
                        // fit: BoxFit.fill,
                        alignment: Alignment.center,
                        height: 35 * fem,
                        width: 35 * fem,
                        // color: Colors.black,
                        color: Color(0xff3c4043),
                      ),
                    ),
                  ),
                  // profile ans resume menu link for the portfolio ...
                  Container(
                    // aboutG3J (4:14)
                    margin: EdgeInsets.fromLTRB(
                        30 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: InkWell(
                      onTap: () {
                        launch("https://wa.me//+916289750151");
                      },
                      child: Image.asset(
                        "assets/page-1/images/whatsapp.png",
                        // fit: BoxFit.fill,
                        alignment: Alignment.center,
                        height: 35 * fem,
                        width: 35 * fem,
                        color: Color(0xff3c4043),

                        // color: Colors.black,
                      ),
                    ),
                  ),
                  // google developer profile link for the profolio ..
                  Container(
                    // aboutG3J (4:14)
                    margin: EdgeInsets.fromLTRB(
                        30 * fem, 30 * fem, 0 * fem, 0 * fem),
                    // padding: EdgeInsets.fromLTRB(0*fem, 30*fem,0,0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            "https://developers.google.com/profile/u/deepmachine786");
                      },
                      child: Image.asset(
                        "assets/page-1/images/profile.png",
                        // fit: BoxFit.fill,
                        alignment: Alignment.center,
                        height: 35 * fem,
                        width: 35 * fem,
                        color: Color(0xff3c4043),

                        // color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // welcomeZAp (22:2)
              margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 80 * fem),
              padding:
                  EdgeInsets.fromLTRB(2 * fem, 90 * fem, 2 * fem, 71.5 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame1Ryi (22:3)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    padding: EdgeInsets.fromLTRB(
                        50 * fem, 40 * fem, 50 * fem, 3 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Showcasing Shahid\'s Journey',  // visi google auto the apply those design in your portfolio..
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 85 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 0.9 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xff3c4043),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame2Fhr (22:4)
                    padding: EdgeInsets.fromLTRB(
                        210 * fem, 0 * fem, 210 * fem, 50 * fem),
                    width: double.infinity,
                    height: 140 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        // 'Creating captivating digital experiences',
                        'A Student Portfolio of Passion and Growth',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 55 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.25 * fem,
                          color: Color(0xff188038),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // scrollbuttonXQU (39:8)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 226 * fem),
              width: 55 * fem,
              height: 80 * fem,
              child: Center(
                child: GestureDetector(
                  onTap: () => {
                    // _scrollController.animateTo(
                    //         500, // the position to scroll to
                    //         duration: Duration(
                    //             milliseconds:
                    //                 1500), // the duration of the animation
                    //         curve: Curves
                    //             .easeInOut, // the easing curve of the animation
                    //       ),
                  },
                  child: Image.asset(
                    'assets/page-1/images/scrollbutton.png',
                    width: 55 * fem,
                    height: 80 * fem,
                  ),
                ),
              ),
            ),
            Container(
              // aboutdivSGY (83:2)
              margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 184 * fem),
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 26 * fem, 0 * fem, 17 * fem),
              width: 1441 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // textabout8QG (39:44)
                    margin: EdgeInsets.fromLTRB(
                        460.5 * fem, 0 * fem, 453.5 * fem, 156 * fem),
                    padding: EdgeInsets.fromLTRB(
                        32.5 * fem, 4 * fem, 32.5 * fem, 4 * fem),
                    width: double.infinity,
                    height: 59 * fem,
                    child: Container(
                      // frame5pnt (39:45)
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: Center(
                          child: Text(
                            'Learn About Who am I.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 47 * ffem,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              height: 1.1363636364 * ffem / fem,
                              letterSpacing: 0.25 * fem,
                              color: Color(0xff202124),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupleyq8BJ (6kyQwvh8p6hFNMuhXBLeYQ)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 91 * fem, 239 * fem),
                    width: 1350 * fem,
                    height: 1070 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // aboutFFv (84:2)
                          left: 0 * fem,
                          top: 110 * fem,
                          child: Container(
                            width: 1350 * fem,
                            height: 900 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xfffef7e0),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80 * fem),
                                bottomRight: Radius.circular(80 * fem),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // aboutMZr (83:4)
                          left: 121 * fem,
                          top: 110 * fem,
                          child: Container(
                            width: 1180 * fem,
                            height: 852 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80 * fem),
                                bottomRight: Radius.circular(80 * fem),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // mynameismdshahidaliandiamcurre (97:2)
                                  left: 655 * fem,
                                  top: 450 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 485 * fem,
                                      height: 80 * fem,
                                      child: Text(
                                        'My name is Md Shahid Ali and I am currently pursuing a Bachelor of Technology  in Computer Science and Engineering from Lovely Professional University.',
                                        style: TextStyle(
                                          fontFamily: 'Product Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          letterSpacing: 0.25 * fem,
                                          color: Color(0xff5f6368),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // frame6gEk (90:2)
                                  left: 641 * fem,
                                  top: 2 * fem,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10 * fem,
                                        340 * fem, 10 * fem, 423 * fem),
                                    width: 575 * fem,
                                    height: 860 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(80 * fem),
                                        bottomRight: Radius.circular(80 * fem),
                                      ),
                                    ),
                                    child: Container(
                                      // frame8mmz (90:4)
                                      width: 493 * fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // aboutusXFN (90:5)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 10 * fem),
                                            child: Text(
                                              ' About Us',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height:
                                                    1.8461538462 * ffem / fem,
                                                letterSpacing: 0.25 * fem,
                                                color: Color(0xff202124),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // bacheloroftechnologyEvU (90:6)
                                            'Bachelor Of Technology',
                                            style: TextStyle(
                                              fontFamily: 'Product Sans',
                                              fontSize: 46 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2727272727 * ffem / fem,
                                              letterSpacing: 0.25 * fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // imagesaboutmQc (90:3)
                          left: 94 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 567 * fem,
                            height: 1570 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // githubprofileimages3hJG (100:3)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 64 * fem),
                                  width: 279 * fem,
                                  height: 496 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(90 * fem),
                                    child: Image.asset(
                                      'assets/page-1/images/githubprofileimages-3.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupyxmjoMJ (6kyR9b2NYLppSAFNmMYXMJ)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // githubprofileimages2xEC (100:2)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 37 * fem, 0 * fem),
                                        width: 250 * fem,
                                        height: 250 * fem,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100 * fem),
                                          child: Image.asset(
                                            'assets/page-1/images/githubprofileimages-2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      // Container(
                                      //   // githubprofileimages1qYt (97:5)
                                      //   width: 280 * fem,
                                      //   height: 510 * fem,
                                      //   child: ClipRRect(
                                      //     borderRadius:
                                      //         BorderRadius.circular(50 * fem),
                                      //     child: Image.asset(
                                      //       'assets/page-1/images/githubprofileimages-1.png',
                                      //     ),
                                      //   ),
                                      // ),
                                      Container(
                                        // githubprofileimages3hJG (100:3)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            10 * fem, 0 * fem, 0 * fem),
                                        width: 279 * fem,
                                        height: 496 * fem,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(90 * fem),
                                          child: Image.asset(
                                            'assets/page-1/images/githubprofileimages-1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // resumesectionMGL (100:4)
                    margin: EdgeInsets.fromLTRB(
                        259.5 * fem, 0 * fem, 262.5 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // bringingcreativitytolifeturnin (100:7)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 25 * fem),
                            child: Text(
                              'Bringing Creativity to Life: Turning Ideas into Reality.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontSize: 34 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.7058823529 * ffem / fem,
                                letterSpacing: 0.25 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // exampleresumemax (105:12)
                          padding: EdgeInsets.fromLTRB(
                              10 * fem, 30 * fem, 10 * fem, 0 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle2HZJ (105:13)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 30 * fem),
                                width: 865 * fem,
                                height: 576 * fem,
                                // child: ClipRRect(
                                //   // borderRadius: BorderRadius.circular(41 * fem),
                                //   // borderRadius:
                                //   //     BorderRadius.circular(100 * fem),
                                //   borderRadius: BorderRadius.circular(41 * fem),

                                //   child: Image.asset(
                                //     'assets/page-1/images/rectangle-2.png',
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors
                                          .black, // Change color as needed
                                      width: 0.5, // Change width as needed
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(41 * fem),
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(41 * fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // resumebioCgG (105:15)
                                padding: EdgeInsets.fromLTRB(
                                    100 * fem, 20 * fem, 100 * fem, 0 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // myresumevMN (105:14)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 10 * fem),
                                        child: Text(
                                          'MyResume',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Product Sans',
                                            fontSize: 19 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.4736842105 * ffem / fem,
                                            letterSpacing: 0.25 * fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // revitalizingmycareerhistorybyc (126:2)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 19 * fem),
                                        child: Text(
                                          'Revitalizing my career history by creating a visually compelling display of my expertise and experience.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Product Sans',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            letterSpacing: 0.25 * fem,
                                            color: Color.fromARGB(
                                                211, 95, 99, 104),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // downloadmyfitnesspaltoyourdevi (126:3)
                                      margin: EdgeInsets.fromLTRB(290.77 * fem,
                                          0 * fem, 294.77 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          2.5 * fem, 0 * fem, 0 * fem, 3 * fem),
                                      width: 120 * fem,
                                      height: 44 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                // Color.fromARGB(141, 0, 0, 0)),
                                                Color.fromARGB(15, 0, 0, 0)),
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(30 * fem),
                                      ),

                                      child: Center(
                                        child: Center(
                                          child: TextButton(
                                            onPressed: () {
                                              launch(
                                                  "https://drive.google.com/file/d/18C40yW3cYgPpCE0k815FVAh2VteSqv9_/view?usp=sharing");
                                            },
                                            style: TextButton.styleFrom(
                                              foregroundColor:
                                                  const Color.fromARGB(
                                                      15, 255, 255, 255),
                                            ),
                                            child: Text(
                                              'Learn more',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height:
                                                    1.7142857143 * ffem / fem,
                                                letterSpacing: 0.5 * fem,
                                                color: Color(0xff1a73e8),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // technicalskillXVa (109:3)
              margin:
                  EdgeInsets.fromLTRB(10 * fem, 0 * fem, 15 * fem, 118 * fem),
              padding:
                  EdgeInsets.fromLTRB(80 * fem, 60 * fem, 128 * fem, 86 * fem),
              width: double.infinity,
              height: 746 * fem,
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 212, 28, 28),
                color: Color(0xffffffff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame10cG8 (126:7)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 82 * fem, 0 * fem),
                    width: 570 * fem,
                    height: 600 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      // color: Color.fromARGB(255, 212, 201, 45)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // ellipse2Jue (126:6)
                          left: 50 * fem,
                          top: 90 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 460 * fem,
                              height: 460 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(230 * fem),
                                  border: Border.all(color: Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle3Qhn (133:3)
                          left: 420 * fem,
                          top: 400 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-3.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle4iyN (133:4)
                          left: 330 * fem,
                          top: 45 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-4.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle12qHJ (133:12)
                          left: 440 * fem,
                          top: 160 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 81 * fem,
                              height: 82 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-12.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle5k9N (133:5)
                          left: 458 * fem,
                          top: 285 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 84 * fem,
                              height: 91 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-5.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle6fGL (133:6)
                          left: 80 * fem,
                          top: 438 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-6.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle7Mur (133:7)
                          left: 210 * fem,
                          top: 490 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-7.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle8HoW (133:8)
                          left: 335 * fem,
                          top: 475 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 90 * fem,
                              height: 90 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-8.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle9Q7S (133:9)
                          left: 20 * fem,
                          top: 340 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-9.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle10JCp (133:10)
                          left: 10 * fem,
                          top: 230 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-10.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle11cjJ (133:11)
                          left: 50 * fem,
                          top: 120 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-11.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle13X5a (137:2)
                          left: 180 * fem,
                          top: 45 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 100 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60 * fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-13.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame111mS (126:8)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 180 * fem, 0 * fem, 100 * fem),
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 10 * fem, 0 * fem, 0 * fem),
                    width: 565 * fem,
                    height: 600 * fem,
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 34, 211, 49),
                      color: Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // technicalmasteryorchestratesbe (126:9)
                          margin: EdgeInsets.fromLTRB(
                              5 * fem, 0 * fem, 0 * fem, 26 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 600 * fem,
                          ),
                          child: Text(
                            'Technical mastery orchestrates Beautiful solutions to complexity.',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2941176471 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // ipossesstechnicalskillsinjavap (126:11)
                          margin: EdgeInsets.fromLTRB(
                              7 * fem, 0 * fem, 0 * fem, 30 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 600 * fem,
                          ),
                          child: Text(
                            'I possess technical skills in Java, Python, Kotlin, JavaScript, and Dart, and am currently working on frameworks such as React and Flutter. I also have knowledge of SQL, MySQL, and MongoDB databases, and am familiar with AWS.',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 17.8 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.6 * ffem / fem,
                              letterSpacing: 0.1000000015 * fem,
                              color: Color(0xff5f6368),
                            ),
                          ),
                        ),
                        Container(
                          // findouthowdevicesworkbettertog (126:12)
                          width: 120 * fem,
                          height: 44 * fem,
                          padding: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 2 * fem),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(15, 0, 0, 0)),
                            borderRadius: BorderRadius.circular(30 * fem),
                          ),
                          child: Center(
                            // Here We Suggets to use FloatActionButton is best ... Remove from row..

                            child: InkWell(
                              // onHover: Colors.blue,
                              onTap: () => {
                                launch("https://linkedin.com/in/mdshahidali/"),
                              },
                              child: Center(
                                child: Text(
                                  'Read more.',
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.6 * ffem / fem,
                                    letterSpacing: 0.5 * fem,
                                    color: Color(0xff1a73e8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupbx76B5a (6kyNtKTmK9EyMWVBqqBX76)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 96 * fem),
              width: 1446 * fem,
              height: 2986 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // explainproject5we (155:21)
                    left: 10 * fem,
                    top: 936 * fem,
                    child: Container(
                      width: 1430 * fem,
                      height: 2050 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // thirdprojectn5N (155:25)
                            left: -5 * fem,
                            top: 1350 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  180 * fem, 0 * fem, 62 * fem, 0 * fem),
                              width: 1440 * fem,
                              height: 600 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // secondimages54U (162:3)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 112 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(50 * fem,
                                        120 * fem, 50 * fem, 120 * fem),
                                    width: 508 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Container(
                                      // rectangle17amv (183:12)
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100 * fem),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/page-1/images/rectangle-17-bg.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // firstimagesJhv (162:5)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 120 * fem, 0 * fem, 200 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 50 * fem, 0 * fem, 0 * fem),
                                    width: 578 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Container(
                                      // frame14cic (167:19)
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 30 * fem, 0 * fem, 10 * fem),
                                      width: 478 * fem,
                                      height: 700 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            // voicechanger8S4 (167:20)

                                            'VoiceChanger',
                                            style: TextStyle(
                                              fontFamily: 'Product Sans',
                                              fontSize: 34 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2941176471 * ffem / fem,
                                              letterSpacing: 0.25 * fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15 * fem,
                                          ),
                                          Container(
                                            // iamdevelopingavoicechangerappl (167:21)
                                            constraints: BoxConstraints(
                                              maxWidth: 580 * fem,
                                            ),
                                            child: Text(
                                              ' I am developing a VoiceChanger application using React, JavaScript\n and Flutter with Dart. Additionally, I am developing a machine learning \n model using Python.',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                letterSpacing:
                                                    0.1000000015 * fem,
                                                color: Color(0xff5f6368),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15 * fem,
                                          ),
                                          Container(
                                            // comingsoonVA8 (177:3)
                                            margin: EdgeInsets.fromLTRB(1 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            // decoration: BoxDecoration(
                                            //   border: Border.all(
                                            //       color: Color(0x33000000)),

                                            //   borderRadius:
                                            //       BorderRadius.circular(
                                            //           30 * fem),
                                            // ),

                                            child: Text(
                                              ' Coming Soon.',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 17 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 2 * ffem / fem,
                                                letterSpacing: 0.5 * fem,
                                                color: Color(0xff1a73e8),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // secondprojectbyr (183:4)
                            left: -5 * fem,
                            top: 860 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  150 * fem, 0 * fem, 132 * fem, 0 * fem),
                              width: 1440 * fem,
                              height: 600 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // firstimagesHrg (183:7)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 50 * fem, 80 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        80 * fem, 50 * fem, 0 * fem, 00 * fem),
                                    width: 570 * fem,
                                    height: 510 * fem,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Container(
                                      // frame14PPv (183:8)
                                      padding: EdgeInsets.fromLTRB(9.5 * fem,
                                          40 * fem, 9.5 * fem, 10 * fem),
                                      width: double.infinity,
                                      height: 200 * fem,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // automatictodo63S (183:9)
                                            margin: EdgeInsets.fromLTRB(
                                                0.5 * fem,
                                                0 * fem,
                                                0 * fem,
                                                20 * fem),
                                            child: Text(
                                              'Automatic Todo',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 38 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    1.2941176471 * ffem / fem,
                                                letterSpacing: 0.25 * fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // anefficientpythonbasedappwasde (183:10)
                                            margin: EdgeInsets.fromLTRB(
                                                0.5 * fem,
                                                0 * fem,
                                                0 * fem,
                                                0 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 580 * fem,
                                            ),
                                            child: Text(
                                              'An efficient Python-based app was developed to automate task management, send notifications, and initiate calls, resulting in improved work processes and increased productivity and efficiency. Additionally, an efficient task reminder app was designed using automation, which reduced task completion time by 50% and further boosted productivity.',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                letterSpacing:
                                                    0.1000000015 * fem,
                                                color: Color(0xff5f6368),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                12 * fem, 0 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                0 * fem,
                                                0 * fem),
                                            child: Text(
                                              'Read more',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 17 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 2 * ffem / fem,
                                                letterSpacing: 0.5 * fem,
                                                color: Color(0xff1a73e8),
                                              ),
                                            ),
                                          ),

                                          // Center(
                                          //   // readmoreABi (183:11)

                                          //   child: Container(
                                          //     // findouthowdevicesworkbettertog (126:12)
                                          //     margin: EdgeInsets.fromLTRB(
                                          //         0 * fem,
                                          //         (0 * fem),
                                          //         360 * fem,
                                          //         0 * fem),
                                          //     width: 120 * fem,
                                          //     height: 40 * fem,
                                          //     // decoration: BoxDecoration(
                                          //     //   border: Border.all(
                                          //     //       color: Color(0x33000000)),
                                          //     //   borderRadius:
                                          //     //       BorderRadius.circular(
                                          //     //           30 * fem),
                                          //     // ),
                                          //     child: Center(
                                          //       child: Text(
                                          //         'Read more.',
                                          //         style: TextStyle(
                                          //           fontFamily: 'Product Sans',
                                          //           fontSize: 15 * ffem,
                                          //           fontWeight: FontWeight.w500,
                                          //           height: 1.6 * ffem / fem,
                                          //           letterSpacing: 0.5 * fem,
                                          //           color: Color(0xff1a73e8),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),

                                          // InkWell(
                                          //     onTap: () {
                                          //       // handle read more button press here
                                          //     },

                                          //     child: Text(
                                          //       'Read more',
                                          //       style: TextStyle(
                                          //         fontFamily: 'Product Sans',
                                          //         fontSize: 15 * ffem,
                                          //         fontWeight: FontWeight.w400,
                                          //         height: 1.5 * ffem / fem,
                                          //         letterSpacing:
                                          //             0.1000000015 * fem,
                                          //         color: Color(0xff0077c2),
                                          //       ),
                                          //     )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // secondimagesTgc (183:5)
                                    padding: EdgeInsets.fromLTRB(50 * fem,
                                        120 * fem, 50 * fem, 140 * fem),
                                    height: 736 * fem,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Center(
                                      // rectangle17zRe (183:6)
                                      child: SizedBox(
                                        width: 408 * fem,
                                        height: 496 * fem,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100 * fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-17.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // firstprojecthqr (155:24)
                            left: -5 * fem,
                            top: 230 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  100 * fem, 30 * fem, 160 * fem, 15 * fem),
                              width: 1440 * fem,
                              height: 701 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // firstimagesPig (162:4)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 92 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(100 * fem,
                                        180 * fem, 50 * fem, 80 * fem),
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Center(
                                      // firstimageJqe (162:8)
                                      child: SizedBox(
                                        width: 408 * fem,
                                        height: 496 * fem,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100 * fem),
                                          child: Image.asset(
                                            'assets/page-1/images/firstimage.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // firstimagesSBA (162:2)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 160 * fem, 0 * fem, 40 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        4 * fem, 40 * fem, 4 * fem, 0 * fem),
                                    width: 530 * fem,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Container(
                                      // frame1395a (162:10)
                                      padding: EdgeInsets.fromLTRB(
                                          2 * fem, 10 * fem, 4 * fem, 66 * fem),
                                      width: 510 * fem,
                                      height: 800 * fem,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // chatbitapplicationFPW (162:11)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 16 * fem),
                                            child: Text(
                                              'Chatbit Application',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 36 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    1.2941176471 * ffem / fem,
                                                letterSpacing: 0.25 * fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // idevelopedchatbitamessagingapp (162:12)
                                            margin: EdgeInsets.fromLTRB(3 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 580 * fem,
                                            ),
                                            child: Text(
                                              'I developed Chatbit, a messaging app with sophisticated animations for end-to-end encryption in any language using Figma & Flutter. This reduced processing time by 60% and improved user experience. The state-of-the-art Flutter-based app incorporates TensorFlow Lite and is hosted on AWS, showcasing expertise in Dart, JS, and Java. It leverages machine learning to deliver cutting-edge features and cross-platform functionality with facial and fingerprint authentication. I introduced customizable automatic replies, leading to 50%  time savings, and improved productivity.',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                letterSpacing:
                                                    0.1000000015 * fem,
                                                color: Color(0xff5f6368),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // autogroupbzetCrU (6kyPQtRATZ2W72QReXBzet)
                                            margin: EdgeInsets.fromLTRB(
                                                3.8 * fem,
                                                0 * fem,
                                                0 * fem,
                                                0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                10 * fem,
                                                0 * fem,
                                                10 * fem),
                                            width: 100.2 * fem,

                                            // decoration: BoxDecoration(
                                            //   border: Border.all(
                                            //       color: Color(0x33000000)),
                                            //   borderRadius:
                                            //       BorderRadius.circular(
                                            //           30 * fem),
                                            // ),

                                            child: Text(
                                              'Read more.',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 17 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.6 * ffem / fem,
                                                letterSpacing: 0.5 * fem,
                                                color: Color(0xff1a73e8),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // title59a (155:23)
                            left: 217 * fem,
                            top: 167 * fem,
                            child: Container(
                              width: 1035 * fem,
                              height: 66 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Center(
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 38 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2941176471 * ffem / fem,
                                        letterSpacing: -0.5500000119 * fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        const TextSpan(
                                          text:
                                              'Exploring Project Portfolio: Inception to Flawles',
                                        ),
                                        TextSpan(
                                          text: 's',
                                          style: TextStyle(
                                            fontFamily: 'Product Sans',
                                            fontSize: 38 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2941176471 * ffem / fem,
                                            letterSpacing: 0.25 * fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Implementation',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // detailsprojectpet (137:5)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 1446 * fem,
                      height: 1015 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Container(
                        // divkHe (137:6)
                        width: 1440 * fem,
                        height: 900 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // backcolorJ4G (137:7)
                              left: 140 * fem,
                              top: 75 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    55 * fem, 290 * fem, 55 * fem, 280 * fem),
                                width: 1300 * fem,
                                height: 852 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xfffce8e6),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(80 * fem),
                                    bottomLeft: Radius.circular(80 * fem),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // frame12nVE (152:17)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // projects8JC (152:18)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 10 * fem),
                                            child: Text(
                                              ' Projects',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 17 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height:
                                                    1.8461538462 * ffem / fem,
                                                letterSpacing: 0.5 * fem,
                                                color: Color(0xff202124),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // mybestworkpushingcreativelimit (152:19)
                                            constraints: BoxConstraints(
                                              maxWidth: 475 * fem,
                                            ),
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 5 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                15 * fem,
                                                0 * fem,
                                                0 * fem),
                                            child: Text(
                                              'My Best Work :\nPushing Creative Limits',
                                              style: TextStyle(
                                                fontFamily: 'Product Sans',
                                                fontSize: 48 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    1.2727272727 * ffem / fem,
                                                letterSpacing: -0.5 * fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // icompletedaprojectthatinvolved (152:20)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      // height: 600*fem,
                                      constraints: BoxConstraints(
                                        maxWidth: 500 * fem,
                                      ),

                                      child: Text(
                                        'I completed a project that involved developing two applications, ChatBit and Advance ToDo, which allowed me to acquire skills in Android and Web development and gain experience  as a Software Engineer.',
                                        style: TextStyle(
                                          fontFamily: 'Product Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          letterSpacing: 0.1000000015 * fem,
                                          color: const Color(0xff5f6368),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // projectimagetitlekTz (137:8)
                              left: 105 * fem,
                              top: 0 * fem,
                              child: Container(
                                width: 1250 * fem,
                                height: 1000 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // projecttitleGx8 (137:11)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          70 * fem, 92 * fem, 78 * fem),
                                      width: 578 * fem,
                                      height: double.infinity,
                                    ),
                                    Container(
                                      // projectimageRa8 (137:9)
                                      width: 580 * fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // rectangle17BJQ (152:15)
                                            left: 21 * fem,
                                            top: 484 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 299 * fem,
                                                height: 496 * fem,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          66 * fem),
                                                  child: Image.asset(
                                                    'assets/page-1/images/rectangle-17-5f6.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rectangle16hGk (152:14)
                                            left: 280 * fem,
                                            top: -1 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 290 * fem,
                                                height: 496 * fem,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          66 * fem),
                                                  child: Image.asset(
                                                    'assets/page-1/images/rectangle-16.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rectangle15bd2 (152:13)
                                            left: 37 * fem,
                                            top: 154 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 208 * fem,
                                                height: 230 * fem,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          66 * fem),
                                                  child: Image.asset(
                                                    'assets/page-1/images/rectangle-15.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rectangle16K3E (152:16)
                                            left: 347 * fem,
                                            top: 568 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 214 * fem,
                                                height: 230 * fem,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          66 * fem),
                                                  child: Image.asset(
                                                    'assets/page-1/images/rectangle-16-rtG.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // experienceweavesgrowthchalleng (200:6)
                    left: 278 * fem,
                    top: 2920 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 880 * fem,
                          height: 44 * fem,
                          child: Center(
                            child: Text(
                              'Experience weaves growth, challenges, and wisdom.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontSize: 38 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2941176471 * ffem / fem,
                                letterSpacing: 0.25 * fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /*
            Here We Use or change the container and design after this line ....
            */

            // Container(
            //   // divVrp (195:2)
            //   margin: EdgeInsets.fromLTRB(
            //       84.5 * fem, 0 * fem, 89.5 * fem, 160 * fem),
            //   width: double.infinity,
            //   height: 394 * fem,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         // articlepeC (195:3)
            //         margin: EdgeInsets.fromLTRB(
            //             0 * fem, 0 * fem, 44 * fem, 0 * fem),
            //         padding: EdgeInsets.fromLTRB(
            //             51 * fem, 29 * fem, 53.91 * fem, 29 * fem),
            //         height: double.infinity,
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Color(0xffe8eaed)),
            //           borderRadius: BorderRadius.circular(60 * fem),
            //         ),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               // gyujbgvems0qhq34sjn7ykhjs8rber (195:4)
            //               margin: EdgeInsets.fromLTRB(
            //                   0 * fem, 0 * fem, 43.09 * fem, 0 * fem),
            //               width: 252 * fem,
            //               height: 336 * fem,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(60 * fem),
            //                 child: Image.asset(
            //                   'assets/page-1/images/gyujbgvems0qhq34sjn7ykhjs8rbertrcja8lhf9gtnc5brd0ac23ietapklcfujkgphmma7icyubsqrlxbvh2jlhw2opyk2f-fctbvd1ytmctad898bw252-rw-e365-v1.png',
            //                   fit: BoxFit.contain,
            //                 ),
            //               ),
            //             ),
            //             Container(
            //               // divmSx (195:5)
            //               margin: EdgeInsets.fromLTRB(
            //                   0 * fem, 96 * fem, 0 * fem, 96 * fem),
            //               height: double.infinity,
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Center(
            //                     // softwareengineerinterncodeclau (195:6)
            //                     child: Container(
            //                       margin: EdgeInsets.fromLTRB(
            //                           0 * fem, 0 * fem, 0 * fem, 16 * fem),
            //                       constraints: BoxConstraints(
            //                         maxWidth: 185 * fem,
            //                       ),
            //                       child: Text(
            //                         'Software Engineer Intern- CodeClause',
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                           fontFamily: 'Product Sans',
            //                           fontSize: 20 * ffem,
            //                           fontWeight: FontWeight.w400,
            //                           height: 1.4 * ffem / fem,
            //                           color: Color(0xff202124),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   Center(
            //                     // ihaveexperienceasasoftwareengi (195:7)
            //                     child: Container(
            //                       constraints: BoxConstraints(
            //                         maxWidth: 216 * fem,
            //                       ),
            //                       child: Text(
            //                         'I have experience as a Software Engineering Intern at CodeClause.',
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                           fontFamily: 'Product Sans',
            //                           fontSize: 16 * ffem,
            //                           fontWeight: FontWeight.w400,
            //                           height: 1.5 * ffem / fem,
            //                           color: Color(0xff5f6368),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),

            //       /*
            //       And This is a Second Container to change the cintainer with design ...

            //       */
            //       Container(
            //         // articlefAx (195:8)
            //         padding: EdgeInsets.fromLTRB(
            //             51 * fem, 29 * fem, 54.4 * fem, 29 * fem),
            //         height: double.infinity,
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Color(0xffe8eaed)),
            //           borderRadius: BorderRadius.circular(60 * fem),
            //         ),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               // rq6fpwdusahwtmc0eilawwxa2yhjba (195:9)
            //               margin: EdgeInsets.fromLTRB(
            //                   0 * fem, 0 * fem, 47.6 * fem, 0 * fem),
            //               width: 252 * fem,
            //               height: 336 * fem,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(60 * fem),
            //                 child: Image.asset(
            //                   'assets/page-1/images/rq6fpwdusahwtmc0eila-wwxa2yhjbatidpjvuti5qadkncuhwflyhir8m0zgwis46pkhk7f133lvgt0xw3vlvw72c9yjwpxegbv5yb6m81prd4ii-yw252-rw-e365-v1.png',
            //                   fit: BoxFit.contain,
            //                 ),
            //               ),
            //             ),
            //             Container(
            //               // divE7a (195:10)
            //               margin: EdgeInsets.fromLTRB(
            //                   0 * fem, 105 * fem, 0 * fem, 95 * fem),
            //               height: double.infinity,
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Center(
            //                     // researchinternbavchedutech9EY (195:11)
            //                     child: Container(
            //                       margin: EdgeInsets.fromLTRB(
            //                           0 * fem, 0 * fem, 3.83 * fem, 25 * fem),
            //                       constraints: BoxConstraints(
            //                         maxWidth: 211 * fem,
            //                       ),
            //                       child: Text(
            //                         'Research Intern\nBavch Edutech',
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                           fontFamily: 'Product Sans',
            //                           fontSize: 19 * ffem,
            //                           fontWeight: FontWeight.w400,
            //                           height: 1.4736842105 * ffem / fem,
            //                           color: Color(0xff202124),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   Center(
            //                     // ihaveexperienceasasoftwareengi (195:12)
            //                     child: Container(
            //                       constraints: BoxConstraints(
            //                         maxWidth: 180 * fem,
            //                       ),
            //                       child: Text(
            //                         'I have experience as Research Edutech.',
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                           fontFamily: 'Product Sans',
            //                           fontSize: 16 * ffem,
            //                           fontWeight: FontWeight.w400,
            //                           height: 1.5 * ffem / fem,
            //                           color: Color(0xff5f6368),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // starting the certificate and achivement part ...

            Center(
              child: Container(
                  height: 500 * fem,
                  width: 1000 * fem,

                  // color: Colors.blue,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 248, 249),
                      // border: Border.all(color: Color.fromARGB(255, 220, 222, 226)),
                      borderRadius: BorderRadius.circular(65 * fem)),

                  // Here We use the slider and call the function who made in upper ...
                  child: CarouselSlider(
                      items: gettheList(),
                      options: CarouselOptions(
                        aspectRatio: 18 / 8,
                        autoPlay: false,
                        autoPlayAnimationDuration: const Duration(seconds: 30),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                      ))),
            ),
            /**
             * 
             * This is Footer Page ******************************************
             */

            Container(
              // footerWUQ (200:7)
              margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 3 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(72 * fem, 85 * fem, 75 * fem, 91 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xfff8f9fa),
                // color: Color.fromARGB(15,255,255,255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // sectionQpg (200:14)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 73 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // connectwithus91a (200:15)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 27 * fem, 0 * fem),
                          child: Text(
                            'Connect with Us',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff5f6368),
                            ),
                          ),
                        ),
                        Container(
                          // rectangle193se (213:2)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 12 * fem, 5 * fem),
                          width: 24 * fem,
                          height: 20 * fem,
                          child: InkWell(
                            onTap: () => {
                              launch("https://linkedin.com/in/mdshahidali/")
                            },
                            child: Image.asset(
                              'assets/page-1/images/rectangle-19.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          // rectangle20Nf2 (213:3)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 12 * fem, 0 * fem),
                          width: 24 * fem,
                          height: 20 * fem,
                          child: InkWell(
                            onTap: () =>
                                {launch("https://github.com/deepamchine786")},
                            child: Image.asset(
                              'assets/page-1/images/rectangle-20.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          // rectangle2176p (213:4)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 850 * fem, 0 * fem),
                          width: 24 * fem,
                          height: 20 * fem,
                          child: InkWell(
                            onTap: () =>
                                {launch("mailto:alishahidmd127@gmail.com")},
                            child: Image.asset(
                              'assets/page-1/images/rectangle-21.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // alishahidmd127gmailcomESL (213:5)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: InkWell(
                            onTap: () =>
                                {launch("mailto:alishahidmd127@gmail.com")},
                            child: Text(
                              'alishahidmd127@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.6 * ffem / fem,
                                color: Color(0xff5f6368),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // sectionYT2 (200:60)
                    margin: EdgeInsets.fromLTRB(
                        4 * fem, 0 * fem, 757 * fem, 0 * fem),
                    width: double.infinity,
                    height: 30 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // portfolio4RN (200:76)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 31 * fem, 0 * fem),
                          child: Text(
                            'Portfolio',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3636363636 * ffem / fem,
                              letterSpacing: 0.25 * fem,
                              color: Color(0xbf202124),
                            ),
                          ),
                        ),
                        Container(
                          // ul9Sp (200:67)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 3.69 * fem, 0 * fem, 2.31 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // aboutgoogleUV6 (200:68)
                                width: 88 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff8f9fa),
                                  borderRadius: BorderRadius.circular(4 * fem),
                                ),
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(15, 255, 255, 255),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        'Home',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Product Sans',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff5f6368),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24 * fem,
                              ),
                              Container(
                                // googleproductswda (200:70)
                                width: 80 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff8f9fa),
                                  borderRadius: BorderRadius.circular(4 * fem),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(15, 255, 255, 255),
                                  ),
                                  child: Text(
                                    'About Us',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff5f6368),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24 * fem,
                              ),
                              TextButton(
                                // privacyEcg (200:72)
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  foregroundColor:
                                      Color.fromARGB(15, 255, 255, 255),
                                ),
                                child: Container(
                                  width: 75 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff8f9fa),
                                    borderRadius:
                                        BorderRadius.circular(4 * fem),
                                  ),
                                  child: Text(
                                    'Contact',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff5f6368),
                                      // decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 24*fem,
                              // ),
                              // Container(
                              //   // termsWq6 (200:74)
                              //   width: 96*fem,
                              //   height: double.infinity,
                              //   decoration: BoxDecoration (
                              //     color: Color(0xfff8f9fa),
                              //     borderRadius: BorderRadius.circular(4*fem),
                              //   ),
                              //   child: Text(
                              //     'Contact Us',
                              //     style: TextStyle (
                              //       'Roboto',
                              //       fontSize: 16*ffem,
                              //       fontWeight: FontWeight.w500,
                              //       height: 1.5*ffem/fem,
                              //       color: Color(0xff5f6368),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // ),
      ),
    );
  }
}
