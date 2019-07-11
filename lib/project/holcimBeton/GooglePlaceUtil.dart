import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GooglePlaceUtil {
  String apiKey;
  Prediction prediction;
  GoogleMapsPlaces places;
  LatLng latLng;

  GooglePlaceUtil(this.apiKey, {this.prediction}) {
    places = GoogleMapsPlaces(apiKey: this.apiKey);
  }

  Future<Prediction> openPrediction(BuildContext context,
      {ValueChanged<PlacesAutocompleteResponse> onError,
      Mode mode = Mode.overlay,
      String hint = ""}) async {
    // show input autocomplete with selected mode
    // then get the Prediction selected
    Prediction p = await PlacesAutocomplete.show(
      hint: hint,
      context: context,
      apiKey: this.apiKey,
      onError: onError,
      mode: mode,
      //language: "fr",
      //components: [Component(Component.country, "fr")],
    );

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId);
    latLng = new LatLng(detail.result.geometry.location.lat,
        detail.result.geometry.location.lng);

    return p;
  }

  static Geolocator initGeolocator() => new Geolocator();

  static String changeToAddress(Placemark place) {
    return "${place.thoroughfare} ${place.subThoroughfare} ${place.subLocality} ${place.locality} ${place.subAdministrativeArea} ${place.administrativeArea} ${place.country} ${place.postalCode}";
  }
}
