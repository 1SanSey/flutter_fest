import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/resources.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.white)),
          const BottomBar(),
          /* BottomNavigationBar(
              currentIndex: 0,
              onTap: (_) {},
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
              ]), */
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        Theme.of(context).bottomNavigationBarTheme.backgroundColor ??
            Colors.black;
    return SizedBox(
      height: 83,
      child: ColoredBox(
        color: backgroundColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 49, maxWidth: 500),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  Expanded(child: _Item(imageName: AppImages.tabbarCalendar)),
                  Expanded(child: _Item(imageName: AppImages.tabbarBookmark)),
                  Expanded(child: _Item(imageName: AppImages.tabbarPoint)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String imageName;
  const _Item({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageName);
  }
}