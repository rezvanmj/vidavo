// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart' as intl;
//
// import '../constants/app_colors.dart';
// import '../constants/app_dimensions.dart';
// import '../constants/app_theme.dart';
//
// class AppTextField extends StatelessWidget {
//   final String? labelText;
//   final String? hintText;
//   final TextEditingController? controller;
//   final FormFieldSetter<String>? onSaved;
//   final ValueChanged<String>? onChanged;
//   final FormFieldValidator<String>? validator;
//   final Color? backgroundColor;
//   final TextInputType? keyboardType;
//   final TextInputAction? textInputAction;
//   final bool? obscureText;
//   final bool? autofocus;
//   final bool? enabled;
//   final Widget? suffixIcon;
//   final Widget? prefix;
//   final AutovalidateMode? autoValidateMode;
//   final int? minLines;
//   final int? maxLines;
//   final bool? readOnly;
//   bool? isRtl;
//   final Function()? onTap;
//   final List<TextInputFormatter>? inputFormatters;
//   final int? maxLength;
//   final FloatingLabelBehavior? floatingLabelBehavior;
//   final String? counterText;
//   final FocusNode? focusNode;
//   final VoidCallback? onEditingComplete;
//   final TextAlign? textAlign;
//   final Color? borderColor;
//   final double? borderRadius;
//   final double? focusedBorderWidth;
//   final double? borderWidth;
//   final TextStyle? labelStyle;
//   bool? isTripleFormatter = false;
//
//   AppTextField({
//     super.key,
//     this.labelText,
//     this.hintText,
//     this.controller,
//     this.onSaved,
//     this.onChanged,
//     this.prefix,
//     this.validator,
//     this.backgroundColor,
//     this.keyboardType,
//     this.textInputAction,
//     this.obscureText,
//     this.autofocus,
//     this.enabled,
//     this.suffixIcon,
//     this.autoValidateMode,
//     this.minLines,
//     this.maxLines,
//     this.isRtl,
//     this.maxLength,
//     this.readOnly,
//     this.inputFormatters,
//     this.onTap,
//     this.floatingLabelBehavior,
//     this.counterText,
//     this.focusNode,
//     this.onEditingComplete,
//     this.textAlign,
//     this.borderColor,
//     this.isTripleFormatter,
//     this.borderRadius,
//     this.focusedBorderWidth,
//     this.borderWidth,
//     this.labelStyle,
//   }) {
//     isRtl ??= true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // if (labelText != null)
//         //   Text(
//         //     labelText!,
//         //     style:
//         //         labelStyle ??
//         //         Theme.of(context).textTheme.bodySmall?.copyWith(
//         //           color: Theme.of(
//         //             context,
//         //           ).extension<CustomColors>()?.secondaryTextColor,
//         //           fontWeight: FontWeight.w500,
//         //         ),
//         //   ),
//         // if (labelText != null) const AppMargin(margin: 8),
//         TextFormField(
//           textAlignVertical: TextAlignVertical.center,
//           focusNode: focusNode,
//           onEditingComplete: onEditingComplete,
//           cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
//           textAlign: textAlign ?? TextAlign.start,
//           onTap: onTap,
//           autofocus: autofocus ?? false,
//           enabled: enabled ?? true,
//           inputFormatters: inputFormatters,
//           readOnly: readOnly ?? false,
//           keyboardType: keyboardType ?? TextInputType.text,
//           textInputAction: textInputAction ?? TextInputAction.next,
//           style: Theme.of(
//             context,
//           ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
//           obscureText: obscureText ?? false,
//           controller: controller,
//           autovalidateMode:
//               autoValidateMode ?? AutovalidateMode.onUserInteraction,
//           onSaved: onSaved,
//           onChanged: (value) {
//             if (onChanged != null) {
//               onChanged!(value);
//             }
//             isTripleFormatter == true ? _onChanged(value) : null;
//           },
//           onTapOutside: (event) {
//             FocusScope.of(context).unfocus();
//           },
//           validator: validator,
//           minLines: minLines,
//           maxLines: maxLines ?? 1,
//           maxLength: maxLength,
//           textDirection: isRtl! ? TextDirection.rtl : TextDirection.ltr,
//
//           decoration: InputDecoration(
//             isDense: true,
//             counterText: counterText,
//
//             fillColor: enabled ?? true
//                 ? Theme.of(context).inputDecorationTheme.fillColor
//                 : Theme.of(context).inputDecorationTheme.fillColor,
//             contentPadding: const EdgeInsets.symmetric(
//               vertical: 10,
//               horizontal: 20,
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(borderRadius ?? AppDimensions.buttonRadius),
//               ),
//               borderSide: BorderSide(
//                 color: Theme.of(
//                   context,
//                 ).inputDecorationTheme.focusedBorder!.borderSide.color,
//                 width: focusedBorderWidth ?? 1.5,
//               ),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(borderRadius ?? AppDimensions.buttonRadius),
//               ),
//               borderSide: BorderSide(
//                 color:
//                     borderColor ??
//                     Theme.of(
//                       context,
//                     ).inputDecorationTheme.enabledBorder!.borderSide.color,
//                 width: borderWidth ?? 0.5,
//               ),
//             ),
//             hoverColor: Colors.transparent,
//             border: OutlineInputBorder(
//               borderSide: BorderSide(width: 6, color: AppColors.grey),
//               borderRadius: BorderRadius.all(
//                 Radius.circular(borderRadius ?? AppDimensions.buttonRadius),
//               ),
//             ),
//
//             floatingLabelBehavior:
//                 floatingLabelBehavior ?? FloatingLabelBehavior.always,
//             prefixIcon: prefix != null
//                 ? Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: prefix,
//                   )
//                 : null,
//             prefixIconConstraints: const BoxConstraints(
//               minWidth: 0,
//               minHeight: 0,
//             ),
//             labelText: labelText,
//             labelStyle:
//                 labelStyle ??
//                 Theme.of(context).textTheme.bodyLarge?.copyWith(
//                   color: Theme.of(
//                     context,
//                   ).extension<CustomColors>()?.secondaryTextColor,
//                   fontWeight: FontWeight.w500,
//                 ),
//             filled: true,
//             hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
//               color: Theme.of(
//                 context,
//               ).extension<CustomColors>()?.secondaryTextColor,
//               fontWeight: FontWeight.w500,
//             ),
//             alignLabelWithHint: true,
//             hintText: hintText?.tr,
//             suffixIcon: suffixIcon,
//           ),
//         ),
//       ],
//     );
//   }
//
//   String formatCurrency(double value) {
//     final intl.NumberFormat numberFormat = intl.NumberFormat("#,##0", "en_US");
//     return numberFormat.format(value);
//   }
//
//   void _onChanged(String value) {
//     if (value.isNotEmpty) {
//       value = value.replaceAll(',', '');
//       double parsedValue;
//       try {
//         parsedValue = double.parse(value);
//       } catch (e) {
//         parsedValue = 0.0;
//       }
//       String formattedText = formatCurrency(parsedValue);
//       controller?.value = controller!.value.copyWith(
//         text: formattedText,
//         selection: TextSelection.collapsed(offset: formattedText.length),
//       );
//     }
//   }
// }
