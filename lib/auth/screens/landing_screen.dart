import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_asignment_1_ovesh/auth/providers/landing_page_provider.dart';
import 'package:job_asignment_1_ovesh/core/constant/image_path.dart';
import 'package:job_asignment_1_ovesh/core/constant/text.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/slider_item_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppPalate.transparent,
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pink.shade100,
              Colors.white,
              Colors.indigo.shade200,
            ]),
      ),
      child: Consumer<LandingPageProvider>(builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 600,
              child: PageView(
                controller: provider.pageController,
                onPageChanged: (value) {
                  provider.pageIndex = value;
                },
                scrollDirection: Axis.horizontal,
                children: [
                  SliderItemWidget(
                      caption: TextConst.findCaption,
                      imagePath: ImagePath.mapIcon,
                      title: TextConst.findTitle),
                  SliderItemWidget(
                      caption: TextConst.chatCaption,
                      imagePath: ImagePath.chatIcon,
                      title: TextConst.chatTitle),
                  SliderItemWidget(
                      caption: TextConst.videoCaption,
                      imagePath: ImagePath.videoIcon,
                      title: TextConst.videoTitle),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SmoothPageIndicator(
                    controller: provider.pageController,
                    count: 3,
                    onDotClicked: (index) {
                      provider.pageIndex = index;
                      // provider.pageController
                      //     .jumpTo(double.parse(index.toString()).toDouble());
                    },
                    effect: WormEffect(
                      dotHeight: 5.0,
                      dotWidth: 20.0,
                      spacing: 10.0,
                      dotColor: AppPalate.grey,
                      activeDotColor: AppPalate.buttonIndigo,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (provider.pageIndex < 2) {
                      provider.pageController
                          .jumpToPage(provider.pageIndex + 1);
                    } else {
                      // Navigate to Home Page
                    }
                  },
                  child: Container(
                    width: 70.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        color: AppPalate.buttonIndigo,
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      CupertinoIcons.arrow_right,
                      color: AppPalate.white.withOpacity(0.8),
                    ),
                  ),
                )
              ],
            )
          ],
        );
      }),
    ));
  }
}
