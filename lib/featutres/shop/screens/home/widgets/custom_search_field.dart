import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/utils/constants/svg_image_strings.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({super.key});

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  late final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: searchController,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(),
          filled: true,
          fillColor: Color(0xFFF3F4F6),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          hintText: 'Explore to next purchase.',
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFFD1D5DB),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 5),
            child: SvgPicture.asset(ASvgImages.searchIcon),
          ),
          suffixIcon: Icon(
            Iconsax.setting_44,
            size: 20,
            color: Color(0xFF6B7280),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
