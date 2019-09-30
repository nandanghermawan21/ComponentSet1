export 'package:component_set1/custom/drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class InputComponent {
  static TextField inputTextWithCorner(
      {position = InputPosition.Center,
      double corner = 0,
      hintText = "",
      bool obscureText = false,
      String fontsFamily = "",
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
      int maxLines,
      Color backgroundColor,
      List<TextInputFormatter> formatter,
      EdgeInsetsGeometry contentPadding}) {
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
      inputFormatters: formatter != null
          ? formatter
          : numberOnly == true
              ? [WhitelistingTextInputFormatter.digitsOnly]
              : [],
      style: TextStyle(
        fontFamily: fontsFamily,
        fontSize: 14.0,
        color: fontColor,
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: textAlign,
      decoration: new InputDecoration(
          contentPadding: contentPadding,
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
          fillColor: backgroundColor ?? Colors.white70,
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
      Color borderColor = Colors.black38,
      Color backgroundColor}) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: new BoxDecoration(
          color: backgroundColor,
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

  static Container inputTextWithUnderLine({
    TextEditingController controller,
    double height = 30,
    double width,
    String hintText = "",
    Color hintTextColor,
    Color textColor = Colors.black,
    TextStyle hintTextStyle,
    TextStyle textStyle,
    IconData suffix,
    VoidCallback onSuffixIconTap,
    Color suffixIconColor,
    Color underLineColor = Colors.black,
    Color enableUnderLineColor,
    Color focusedUnderLineColor,
    Color disableUnderlineColor,
    bool obscureText = false,
    IconData leadingIcon,
    VoidCallback onTapLeadingIcon,
    Color leadingIconColor,
    IconData trailingIcon,
    VoidCallback onTapTrailingIcon,
    Color trailingIconColor,
    bool readOnly = false,
    ValueChanged<String> onChange,
  }) {
    return Container(
      width: double.infinity,
      height: (height * 1.2).toDouble(),
      color: width ?? Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            leadingIcon == null
                ? Container()
                : GestureDetector(
                    onTap: onTapLeadingIcon,
                    child: Icon(
                      leadingIcon,
                      color: leadingIconColor ?? Colors.black,
                      size: height,
                    ),
                  ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: leadingIcon == null ? 0 : 10,
                          right: trailingIcon == null ? 0 : 10),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: TextField(
                          controller: controller,
                          readOnly: readOnly,
                          onChanged: onChange,
                          style: textStyle ??
                              TextStyle(
                                color: textColor,
                                // fontFamily: FontUtil.primary,
                              ),
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            hintText: "$hintText",
                            hintStyle: hintTextStyle ??
                                TextStyle(
                                  color: hintTextColor ??
                                      Colors.black.withOpacity(0.3),
                                ),
                            contentPadding: EdgeInsets.only(
                                bottom: 3,
                                right: suffix != null ? height * 3 / 4 : 0),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: underLineColor),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      enableUnderLineColor ?? underLineColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      focusedUnderLineColor ?? underLineColor),
                            ),
                            disabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      disableUnderlineColor ?? underLineColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    suffix == null
                        ? Container()
                        : Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: onSuffixIconTap,
                              child: Container(
                                height: height * 3 / 4,
                                width: height * 3 / 4,
                                color: Colors.transparent,
                                margin: EdgeInsets.only(right: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Icon(
                                    suffix,
                                    size: height * 3 / 4,
                                    color: suffixIconColor ?? Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ),
            trailingIcon == null
                ? Container()
                : GestureDetector(
                    onTap: onTapTrailingIcon,
                    child: Icon(
                      trailingIcon,
                      color: trailingIconColor ?? Colors.black,
                    ),
                  )
          ],
        ),
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

enum StateInputMessageStatus {
  Danger,
  Warning,
  Info,
}

class StateInputMessage {
  StateInputMessageStatus status;
  String message;

  StateInputMessage({
    this.status,
    this.message,
  });
}
