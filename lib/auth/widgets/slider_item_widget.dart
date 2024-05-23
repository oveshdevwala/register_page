// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';

class SliderItemWidget extends StatelessWidget {
  SliderItemWidget({
    super.key,
    required this.caption,
    required this.imagePath,
    required this.title,
  });
  String imagePath;
  String title;
  String caption;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ))),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 29,
                        letterSpacing: 8,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    caption,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: AppPalate.grey,
                        fontWeight: FontWeight.bold),
                  ),

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
