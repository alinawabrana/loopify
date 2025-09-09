import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/featutres/home/screens/add_product/add_update_product_screen.dart';
import 'package:loopify/utils/common/widgets/container/circular_container.dart';
import 'package:loopify/utils/common/widgets/icons/primary_icon.dart';
import 'package:loopify/utils/constants/colors.dart';
import 'package:loopify/utils/constants/svg_image_strings.dart';

import 'featutres/category/screens/category_screen.dart';
import 'featutres/home/screens/home/home_screen.dart';

class NavigationDashboard extends StatefulWidget {
  const NavigationDashboard({super.key});

  @override
  State<NavigationDashboard> createState() => _NavigationDashboardState();
}

class _NavigationDashboardState extends State<NavigationDashboard> {
  late int index = 0;
  bool refreshHome = false;

  void navigateTo(int newIndex) {
    index = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> navigationWidgets = [
      HomeScreen(),
      CategoryScreen(),
      Container(color: Colors.yellowAccent),
      Container(color: Colors.greenAccent),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: navigationWidgets[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddUpdateProductScreen()),
            ).then((value) {
              if (value == true) {
                setState(() {
                  refreshHome =
                      !refreshHome; // toggle key so HomeScreen rebuilds
                });
              }
            }),
        elevation: 0,
        shape: CircleBorder(),
        backgroundColor: AColors.primaryBackgroundColor,
        child: CircularContainer(
          width: 32,
          height: 32,
          backgroundColor: AColors.primaryColor,
          child: Icon(Icons.add, size: 26.67, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                NavBarItem(
                  isSelected: index == 0,
                  onTap: () => setState(() {
                    index = 0;
                  }),
                  label: 'Home',
                  selectedIcon: SvgPicture.asset(
                    ASvgImages.homeIconFilled,
                    width: 24,
                    height: 24,
                  ),
                  unselectedIcon: PrimaryIcon(icon: Iconsax.home, size: 24),
                ),
                NavBarItem(
                  isSelected: index == 1,
                  onTap: () => setState(() {
                    index = 1;
                  }),
                  label: 'Category',
                  selectedIcon: SvgPicture.asset(
                    ASvgImages.categoryIconFilled,
                    width: 24,
                    height: 24,
                  ),
                  unselectedIcon: SvgPicture.asset(
                    ASvgImages.categoryIconOutlined,
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                NavBarItem(
                  isSelected: index == 2,
                  onTap: () => setState(() {
                    index = 2;
                  }),
                  label: 'Chat',
                  selectedIcon: SvgPicture.asset(
                    ASvgImages.chatIconFilled,
                    width: 24,
                    height: 24,
                  ),
                  unselectedIcon: SvgPicture.asset(
                    ASvgImages.chatIconOutlined,
                    width: 24,
                    height: 24,
                  ),
                ),
                NavBarItem(
                  isSelected: index == 3,
                  onTap: () => setState(() {
                    index = 3;
                  }),
                  label: 'Setting',
                  selectedIcon: SvgPicture.asset(
                    ASvgImages.settingIconFilled,
                    width: 24,
                    height: 24,
                  ),
                  unselectedIcon: Transform.rotate(
                    angle: 0.5,
                    child: PrimaryIcon(icon: Iconsax.setting4, size: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
        //     child: ClipRRect(
        //       child: BottomNavigationBar(
        //         type: BottomNavigationBarType.fixed,
        //         currentIndex: index,
        //         onTap: navigateTo,
        //         backgroundColor: Color(0xFFF3F4F6),
        //         unselectedItemColor: Color(0xFF6B7280),
        //         selectedItemColor: Colors.black,
        //         unselectedLabelStyle: TextStyle(
        //           fontWeight: FontWeight.w400,
        //           fontSize: 12,
        //         ),
        //         selectedLabelStyle: TextStyle(
        //           fontWeight: FontWeight.w500,
        //           fontSize: 12,
        //           color: Colors.black,
        //         ),
        //         items: [
        //           BottomNavigationBarItem(
        //             icon: Icon(Iconsax.home, size: 20),
        //             label: 'Home',
        //             activeIcon: Icon(Iconsax.home_25, size: 20),
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(Iconsax.grid_4, size: 20),
        //             label: 'Home',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(Iconsax.message, size: 20),
        //             label: 'Home',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Transform.rotate(
        //               angle: 0.5,
        //               child: Icon(
        //                 index == 3 ? Iconsax.setting1 : Iconsax.setting,
        //                 size: 20,
        //               ),
        //             ),
        //             label: 'Home',
        //           ),
        //         ],
        //       ),
        //     ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    this.isSelected = false,
    required this.onTap,
    required this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
  });

  final bool isSelected;
  final VoidCallback onTap;
  final String label;
  final Widget selectedIcon;
  final Widget unselectedIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 73.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSelected ? selectedIcon : unselectedIcon,
            // SizedBox(height: 5),
            Text(
              label,
              style: isSelected
                  ? Theme.of(
                      context,
                    ).textTheme.labelSmall!.copyWith(color: Colors.black)
                  : Theme.of(context).textTheme.bodySmall!.copyWith(height: 0),
            ),
          ],
        ),
      ),
    );
  }
}

//
//
// ClipRRect(
// borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// child: BottomNavigationBar(
// type: BottomNavigationBarType.fixed,
// currentIndex: index,
// onTap: navigateTo,
// backgroundColor: Color(0xFFF3F4F6),
// unselectedItemColor: Color(0xFF6B7280),
// selectedItemColor: Colors.black,
// unselectedLabelStyle: TextStyle(
// fontWeight: FontWeight.w400,
// fontSize: 12,
// ),
// selectedLabelStyle: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 12,
// color: Colors.black,
// ),
// items: [
// BottomNavigationBarItem(
// icon: Icon(index == 0 ? Iconsax.home_25 : Iconsax.home, size: 20),
// label: 'Home',
// ),
// BottomNavigationBarItem(
// icon: Icon(Iconsax.grid_4, size: 20),
// label: 'Home',
// ),
// BottomNavigationBarItem(
// icon: Icon(Iconsax.message, size: 20),
// label: 'Home',
// ),
// BottomNavigationBarItem(
// icon: Transform.rotate(
// angle: 0.5,
// child: Icon(
// index == 3 ? Iconsax.setting1 : Iconsax.setting,
// size: 20,
// ),
// ),
// label: 'Home',
// ),
// ],
// ),
// ),
