import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabNames;
  final int selectedIndex;
  final Function(int) onTap;

  // ignore: use_key_in_widget_constructors
  const CustomTabBar({
    required this.tabNames,
    required this.selectedIndex,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black, width: 3.0),
        ),
      ),
      tabs: tabNames
          .asMap()
          .map((i, e) => MapEntry(
              i,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Tab(
                  child: Text(
                    e,
                    style: TextStyle(
                      color: i == selectedIndex ? Colors.black : Colors.black45,
                    ),
                  ),
                ),
              )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
