import 'package:flutter/material.dart';

class SkeltonLoadingWidget extends StatelessWidget {
  const SkeltonLoadingWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.margin,
  }) : super(key: key);

  final double height;
  final double width;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
