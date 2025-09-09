import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/utils/helper/helpers.dart';

import '../../../../../utils/common/widgets/container/circular_container.dart';
import '../../../../../utils/constants/image_strings.dart';

class ImageFetchingContainer extends StatelessWidget {
  const ImageFetchingContainer({
    super.key,
    this.onTap,
    this.image,
    this.onCancelTap,
    this.hasError = false,
  });

  final VoidCallback? onTap;
  final VoidCallback? onCancelTap;
  final File? image;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 56, width: 56, child: Container()),
        Positioned(
          bottom: 0,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: image == null ? Color(0xFFEEEDED) : Color(0x33000000),
                border: Border.all(
                  color: hasError ? Colors.redAccent : Colors.transparent,
                ),
              ),
              child: Center(
                child: image != null
                    ? Image(image: AHelper.buildImage(image!.path))
                    : Icon(Icons.add, size: 16, color: Color(0xFFD1D5DB)),
              ),
            ),
          ),
        ),
        if (image != null)
          Positioned(
            top: 0,
            right: 0,
            child: CircularContainer(
              width: 20,
              height: 20,
              onTap: onCancelTap,
              child: Image.asset(AImages.cancelIconImage),
            ),
          ),
      ],
    );
  }
}
