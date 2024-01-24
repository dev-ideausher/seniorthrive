import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class seniorThriveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? backgroundColor;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final Widget? title;
  final bool? centerTitle;
  final bool? isleading;
  const seniorThriveAppBar(
      {super.key,
      this.actions,
      this.leading,
      this.title,
      this.centerTitle,
      this.backgroundColor,
      this.isleading = true,
      this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      bottom: bottom,
      actions: actions,
      leading: isleading!
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                CupertinoIcons.chevron_back,
                color: Colors.black,
              ))
          : leading,
      title: title,
      centerTitle: centerTitle,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
