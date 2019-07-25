import 'package:flutter/material.dart';

class DropDownList<T> extends StatefulWidget {
  final T value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T> onChange;
  final Widget hint;

  const DropDownList(
      {Key key, this.value, this.items, this.onChange, this.hint})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DropDownListState<T>(value);
  }
}

class DropDownListState<T> extends State<DropDownList> {
  final T value;

  DropDownListState(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<T>(
        value: widget.value,
        items: widget.items,
        onChanged: widget.onChange,
        isExpanded: true,
        hint: widget.hint,
      ),
    );
  }
}
