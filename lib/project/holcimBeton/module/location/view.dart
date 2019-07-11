import 'package:component_set1/project/holcimBeton/BottonComponent.dart';
import 'package:component_set1/module/location/main.dart' as location;
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/project/holcimBeton/DecorationComponent.dart';
import 'package:flutter/material.dart';
import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: widget.decoration ?? DecorationComponent.boxDecoration(
        aligment: Alignment.center
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: BottonComponent.customAppBar1(
            context: context,
            elevetion: 0,
            title: widget.title,
            actionText: widget.backText,
            onBack: widget.onBack),
        body: location.Presenter(
          apiGoogleMap: widget.apiGoogleMap,
          onSave: widget.onSave,
          onBack: widget.onBack,
          title: widget.title,
          saveText: widget.saveText,
          backText: widget.backText,
          decoration: widget.decoration,
          background: ColorUtil().scafoldColor.withOpacity(0.3),
          borderInput: ColorUtil().borderInputGray,
          bottonColor: ColorUtil().mainColor,
        ),
      ),
    );
  }
}
