import 'package:component_set1/FontUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputComponent {
  static TextField inputTextWithCorner(
      {position = InputPosition.Center,
      double corner = 0,
      hintText = "",
      bool obscureText = false,
      String fontsFamily = FontUtil.Primary,
      Color fontColor = Colors.black,
      TextInputType keyboardType = TextInputType.text,
      Color hintColor = Colors.grey,
      Widget suffixIcon,
      TextEditingController controller,
      StateInput stateInput = StateInput.Enable,
      ValueChanged<String> onChanged,
      bool numberOnly = false,
      Color inputBorderError = Colors.redAccent,
      Color borderInputGray = Colors.greenAccent,
      VoidCallback onTap}) {
    return TextField(
      onTap: onTap,
      onChanged: onChanged,
      inputFormatters:
          numberOnly == true ? [WhitelistingTextInputFormatter.digitsOnly] : [],
      style:
          TextStyle(fontFamily: fontsFamily, fontSize: 14.0, color: fontColor),
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderSide: new BorderSide(
                color: stateInput == StateInput.Error
                    ? inputBorderError
                    : borderInputGray,
                width: 2),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(position == InputPosition.Bottom ||
                        position == InputPosition.Center
                    ? corner
                    : 0.0),
                bottomRight: Radius.circular(
                    position == InputPosition.Bottom || position == InputPosition.Center
                        ? corner
                        : 0.0),
                topLeft: Radius.circular(
                    position == InputPosition.Top || position == InputPosition.Center
                        ? corner
                        : 0.0),
                topRight: Radius.circular(
                    position == InputPosition.Top || position == InputPosition.Center
                        ? corner
                        : 0.0)),
          ),
          enabledBorder: new OutlineInputBorder(
            borderSide: new BorderSide(
                color: stateInput == StateInput.Error
                    ? inputBorderError
                    : borderInputGray,
                width: 2),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(position == InputPosition.Bottom ||
                        position == InputPosition.Center
                    ? corner
                    : 0.0),
                bottomRight: Radius.circular(
                    position == InputPosition.Bottom || position == InputPosition.Center
                        ? corner
                        : 0.0),
                topLeft: Radius.circular(
                    position == InputPosition.Top || position == InputPosition.Center
                        ? corner
                        : 0.0),
                topRight: Radius.circular(
                    position == InputPosition.Top || position == InputPosition.Center
                        ? corner
                        : 0.0)),
          ),
          focusedBorder: new OutlineInputBorder(
            borderSide: new BorderSide(
                color: stateInput == StateInput.Error
                    ? inputBorderError
                    : borderInputGray,
                width: 2),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(position == InputPosition.Bottom ||
                        position == InputPosition.Center
                    ? corner
                    : 0.0),
                bottomRight: Radius.circular(
                    position == InputPosition.Bottom || position == InputPosition.Center
                        ? corner
                        : 0.0),
                topLeft: Radius.circular(
                    position == InputPosition.Top || position == InputPosition.Center
                        ? corner
                        : 0.0),
                topRight: Radius.circular(
                    position == InputPosition.Top || position == InputPosition.Center
                        ? corner
                        : 0.0)),
          ),
          filled: true,
          hintStyle: new TextStyle(color: hintColor),
          hintText: hintText,
          fillColor: Colors.white70,
          suffixIcon: suffixIcon),
    );
  }
}

enum InputPosition {
  ///
  /// Define this enum for declare the top position of input verticaly
  ///
  ///
  Top,

  ///
  /// Define this enum for declare the center position of input verticaly
  ///
  ///
  Center,

  ///
  /// Define this enum for declare the top bottom of input verticaly
  ///
  ///
  Bottom
}

enum StateInput {
  ///
  /// Define this enum for declare the top position of input verticaly
  ///
  ///
  Enable,

  ///
  /// Define this enum for declare the top position of input verticaly
  ///
  ///
  Disable,

  ///
  /// Define this enum for declare the top position of input verticaly
  ///
  ///
  Focus,

  ///
  /// Define this enum for declare the top position of input verticaly
  ///
  ///
  Error
}
