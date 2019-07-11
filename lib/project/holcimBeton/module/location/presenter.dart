import 'package:flutter/material.dart';
import 'view.dart';
import 'package:google_maps_webservice/places.dart' as place;

class Presenter extends StatefulWidget {
  final String apiGoogleMap;
  final ValueChanged<place.Prediction> onSave;
  final String saveText;
  final String backText;
  final String title;
  final VoidCallback onBack;
  final BoxDecoration decoration;

  const Presenter({
    Key key,
    @required this.apiGoogleMap,
    @required this.onSave,
    @required this.saveText,
    this.backText,
    this.title,
    this.onBack,
    this.decoration,
  }) : super(key: key);

  @override
  View createState() => View();
}

abstract class PresenterState extends State<Presenter> {
  
}
