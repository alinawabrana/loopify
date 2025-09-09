import 'dart:io';

import 'package:flutter/material.dart';

import 'image_fetching_container.dart';

class ImageFetchingFormField extends StatelessWidget {
  const ImageFetchingFormField({
    super.key,
    this.image,
    this.onTap,
    this.onCancelTap,
  });

  final File? image;
  final VoidCallback? onTap;
  final VoidCallback? onCancelTap;

  @override
  Widget build(BuildContext context) {
    return FormField(
      validator: (value) {
        if (image == null) return "Please Pick an image";
        return null;
      },
      builder: (FormFieldState state) {
        return ImageFetchingContainer(
          onTap: () {
            onTap!();
            state.didChange(image);
          },
          image: image,
          onCancelTap: () {
            onCancelTap!();
            state.didChange(image);
          },
          hasError: state.hasError,
        );
      },
    );
  }
}
