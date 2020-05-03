import 'package:dello/provider/bottom_navigation_provider.dart';
import 'package:dello/ui/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DelloBottomNavBar extends StatelessWidget {
  final List<String> iconNameList = [
    "home_icon",
    "notification_icon",
    "search_icon",
    "calendar_icon"
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationProvider _bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);

    onTap(int pageIndex) {
      _bottomNavigationProvider.setCurrentIndex(pageIndex);
    }

    // getBottomNavigationItems() {
    //   List<Widget> bottomNavigationItems = [];

    //   for (int i = 0; i < iconNameList.length; i++) {
    //     var currentIndex = i > 2 ? i - 1 : i;

    //     bottomNavigationItems.add(
    //       iconNameList[i] != null
    //           ? GestureDetector(
    //               onTap: () => onTap(currentIndex),
    //               child: Container(
    //                 child: SvgIcon(
    //                   iconName: iconNameList[currentIndex],
    //                   color: (i != _bottomNavigationProvider.getCurrentIndex)
    //                       ? Theme.of(context).colorScheme.onSurface
    //                       : Theme.of(context).primaryColor,
    //                 ),
    //               ),
    //             )
    //           : Spacer(),
    //     );
    //   }

    //   return bottomNavigationItems;
    // }

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
            width: 1.5,
          ),
        ),
      ),
      child: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Color(0xff828282),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _bottomNavigationProvider.getCurrentIndex,
        onTap: onTap,
        elevation: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        items: iconNameList
            .map(
              (iconName) => BottomNavigationBarItem(
                icon: SvgIcon(
                  iconName: iconName,
                  color: (iconName !=
                          iconNameList[
                              _bottomNavigationProvider.getCurrentIndex])
                      ? Theme.of(context).colorScheme.onSurface
                      : Theme.of(context).primaryColor,
                ),
                title: SizedBox(height: 0, width: 0),
              ),
            )
            .toList(),
      ),
    );
  }
}

// BottomAppBar(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: getBottomNavigationItems(),
//         ),
//       ),
