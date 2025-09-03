import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/featutres/shop/screens/home/home_screen.dart';
import 'package:loopify/utils/constants/colors.dart';
import 'package:loopify/utils/constants/svg_image_strings.dart';

class NavigationDashboard extends StatefulWidget {
  const NavigationDashboard({super.key});

  @override
  State<NavigationDashboard> createState() => _NavigationDashboardState();
}

class _NavigationDashboardState extends State<NavigationDashboard> {
  final List<Widget> navigationWidgets = [
    HomeScreen(),
    Container(color: Colors.redAccent),
    Container(color: Colors.yellowAccent),
    Container(color: Colors.greenAccent),
  ];

  late int index = 0;

  void navigateTo(int newIndex) {
    index = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationWidgets[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        shape: CircleBorder(),
        backgroundColor: Color(0xFFF3F4F6),
        child: CircleAvatar(
          backgroundColor: AColors.primaryColor,
          radius: 15,
          child: Icon(Icons.add, size: 20, color: Colors.white),
          // backgroundColor: Color(0xFFF3F4F6),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: AColors.primaryBackgroundColor,
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
                    unselectedIcon: Icon(
                      Iconsax.home,
                      size: 24,
                      color: Color(0xFF6B7280),
                    ),
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
                      child: Icon(
                        Iconsax.setting4,
                        size: 24,
                        color: Color(0xFF6B7280),
                      ),
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
                  ? TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black,
                    )
                  : TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
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
