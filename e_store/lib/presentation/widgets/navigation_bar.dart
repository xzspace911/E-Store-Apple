// import 'package:e_store/presentation/screens/ui/home_screen.dart';
// import 'package:e_store/presentation/screens/ui/profile_screen.dart';
// import 'package:e_store/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class NavigationMenu extends StatelessWidget {
//   const NavigationMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());
//     return Scaffold(
//       bottomNavigationBar: Obx(
//         () => NavigationBar(
//           height: 70,
//           elevation: 0,
//           backgroundColor: XColors.white,
//           indicatorShape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           selectedIndex: controller.selectedIndex.value,
//           onDestinationSelected: (index) =>
//               controller.selectedIndex.value = index,
//           destinations: const [
//             NavigationDestination(
//               icon: Icon(Iconsax.home),
//               label: 'Home',
//             ),
//             NavigationDestination(
//               icon: Icon(Iconsax.search_normal),
//               label: 'Search',
//             ),
//             NavigationDestination(
//               icon: Icon(Iconsax.shopping_bag),
//               label: 'Cart',
//             ),
//             NavigationDestination(
//               icon: Icon(Iconsax.user),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//       body: Obx(() => controller.screens[controller.selectedIndex.value]),
//     );
//   }
// }

// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;
//   final screens = [
//     const HomeScreen(),
//     Container(color: Colors.amber),
//     Container(color: Colors.purple),
//     const ProfileScreen()
//   ];
// }
