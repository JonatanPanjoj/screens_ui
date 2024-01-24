import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Pokemon Screen',
    subTitle: 'A pokemon shown in a sliver appbar',
    link: '/app-sliver-screen',
    icon: Icons.wechat_rounded,
  ),
  MenuItem(
    title: 'Pokemon Screen',
    subTitle: 'A pokemon shown in a sliver appbar',
    link: '/app-sliver-screen-vid',
    icon: Icons.wechat_rounded,
  ),
  MenuItem(
    title: 'Gallery Picker',
    subTitle: 'Select several images and display them',
    link: '/select-images-screen',
    icon: Icons.image,
  ),

];
