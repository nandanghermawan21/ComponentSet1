import 'package:component_set1/util/FontUtil.dart';
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
      Widget prefixIcon,
      TextEditingController controller,
      StateInput stateInput = StateInput.Enable,
      ValueChanged<String> onChanged,
      ValueChanged<String> onSubmited,
      bool numberOnly = false,
      Color inputBorderError = Colors.redAccent,
      Color borderInputGray = Colors.grey,
      bool autoFocus = false,
      VoidCallback onTap,
      FocusNode focusnode,
      VoidCallback onEditingComplete,
      TextInputAction textInputAction = TextInputAction.done,
      TextAlign textAlign = TextAlign.left,
      bool readOnly = false,
      int maxLines}) {
    return TextField(
      maxLines: maxLines,
      enabled: readOnly == true ? false : true,
      onTap: onTap,
      focusNode: focusnode,
      autofocus: autoFocus,
      onChanged: onChanged,
      onSubmitted: onSubmited,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      inputFormatters:
          numberOnly == true ? [WhitelistingTextInputFormatter.digitsOnly] : [],
      style:
          TextStyle(fontFamily: fontsFamily, fontSize: 14.0, color: fontColor),
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: textAlign,
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
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon),
    );
  }

  static Container dropDownWithCorner(
      {double corner = 5,
      double padding = 10,
      String value,
      List<DropdownMenuItem<String>> items,
      ValueChanged<String> onChangeds,
      String hint = "hint",
      Color borderColor = Colors.black38}) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(corner)),
          border: new Border.all(color: borderColor)),
      child: DropdownButton(
        value: value,
        items: items,
        onChanged: onChangeds,
        isExpanded: true,
        hint: Text(hint),
      ),
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
