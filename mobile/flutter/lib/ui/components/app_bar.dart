import 'package:flutter/material.dart';

import 'package:get/get.dart';

import './components.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  final bool? navigationBack;
  final bool? centerTitle;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? color;
  final Color? navigationColor;
  final double? elevation;
  final double? leadingWidth;
  final double? titleSpacing;
  final PreferredSizeWidget? bottom;

  const Bar({
    Key? key,
    this.navigationBack,
    this.leading,
    this.title,
    this.actions,
    this.color,
    this.navigationColor,
    this.elevation,
    this.leadingWidth,
    this.titleSpacing,
    this.bottom,
    this.centerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool navigationBoolean =
        navigationBack != null ? navigationBack! : Navigator.canPop(context);
    return AppBar(
      leading: leading != null
          ? leading
          : navigationBoolean
              ? IconButton(
                  color: navigationColor,
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back),
                  splashRadius: 22.0,
                )
              : null,
      title: title,
      centerTitle: centerTitle,
      automaticallyImplyLeading: navigationBoolean,
      actions: actions,
      backgroundColor: color,
      elevation: elevation ?? 2.0,
      leadingWidth: leadingWidth,
      bottom: bottom,
      titleSpacing: titleSpacing,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
