import 'package:flutter/material.dart';
import 'package:component_set1/util/ColorUtil.dart';

class DecorationComponent {
  static BoxDecoration boxDecoration({bool dark = true}) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 8],
        colors: [
          dark == true ? HolcimBetonColor().greyColor : Colors.white,
          HolcimBetonColor().blackColor,
        ],
      ),
      image: DecorationImage(
        image: AssetImage(dark == true
            ? "assets/backgorundDark.png"
            : "assets/backgorundlight.png"),
        fit: BoxFit.fitWidth,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
