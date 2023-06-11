// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// import 'package:project1_change_appbar_color/Classes/MiniProjects/sheet_component/sheet_with_callback/icon_button.dart';

// class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
//   CustomAppBar({
//     Key? key,
//     required this.title,
//     this.fun,
//     required this.icon,
//     required this.prefferedSize,
//   }) : super(key: key);

//   final String title;
//   final Function? fun;
//   final Icon icon;
//   final double prefferedSize;

//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();

//   @override
//   Size get preferredSize => Size.fromHeight(prefferedSize);
// }

// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(widget.title),
//       actions: [CustomIconButton(icon: widget.icon, fun: widget.fun)],
//     );
//   }
// }
