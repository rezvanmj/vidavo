// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../constants/app_dimensions.dart';
// import '../constants/app_strings.dart';
// import '../constants/app_theme.dart';
//
// class SearchInput extends StatelessWidget {
//   const SearchInput({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: TextFormField(
//         decoration: InputDecoration(
//           isDense: true,
//
//           fillColor: Theme.of(context).inputDecorationTheme.fillColor,
//           contentPadding: const EdgeInsets.symmetric(
//             vertical: 10,
//             horizontal: 20,
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(AppDimensions.cardRadius),
//             ),
//             borderSide: BorderSide(color: Colors.transparent, width: 0),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(AppDimensions.cardRadius),
//             ),
//             borderSide: BorderSide(color: Colors.transparent, width: 0),
//           ),
//           hoverColor: Colors.transparent,
//           border: OutlineInputBorder(
//             borderSide: BorderSide(width: 0, color: Colors.transparent),
//             borderRadius: BorderRadius.all(
//               Radius.circular(AppDimensions.cardRadius),
//             ),
//           ),
//
//           floatingLabelBehavior: FloatingLabelBehavior.always,
//           prefixIcon: Icon(
//             CupertinoIcons.search,
//             size: 25,
//             color: Theme.of(context).colorScheme.outline,
//           ),
//
//           labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
//             color: Theme.of(
//               context,
//             ).extension<CustomColors>()?.secondaryTextColor,
//             fontWeight: FontWeight.w500,
//           ),
//           filled: true,
//           hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
//             color: Theme.of(context).colorScheme.outline,
//             fontWeight: FontWeight.w500,
//           ),
//           alignLabelWithHint: true,
//           hintText: AppStrings.search,
//         ),
//       ),
//     );
//   }
// }
