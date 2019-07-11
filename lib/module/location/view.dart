import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/component/ButtonComponent.dart';
import 'package:component_set1/component/InputComponent.dart';
import 'package:component_set1/project/holcimBeton/FontUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            color: widget.background,
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: InputComponent.inputTextWithCorner(
                readOnly: false,
                autoFocus: true,
                hintText: '',
                maxLines: 1,
                backgroundColor: Colors.white,
                focusnode: searchFocus,
                borderInputGray: widget.borderInput,
                controller: searchController,
                stateInput: searchState,
                textInputAction: TextInputAction.done,
                prefixIcon: IconButton(
                  icon: Icon(
                    FontAwesomeLight(FontAwesomeId.fa_search),
                    color: Colors.black,
                  ),
                  onPressed: () => searchLocation(context),
                ),
                corner: 10,
                keyboardType: TextInputType.emailAddress,
                onChanged: (v) {
                  searchController.text = googlePlaceUtil.prediction == null
                      ? ""
                      : googlePlaceUtil.prediction.description;
                }),
          ),
          loadData == false
              ? Container()
              : Expanded(
                  // height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: GoogleMap(
                          myLocationButtonEnabled: false,
                          myLocationEnabled: true,
                          mapType: MapType.normal,
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController = controller;
                            mcontroller.complete(controller);
                          },
                          scrollGesturesEnabled: true,
                          initialCameraPosition: CameraPosition(
                            target: currenPosition,
                            zoom: 1,
                          ),
                          markers: Set<Marker>.of(markers.values),
                          onTap: (latLng) {
                            selectLocation(latLng);
                            getAddress(latLng);
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 20),
                            child: ButtonComponent.roundedButton(
                              colorBackground: widget.bottonColor,
                              onPressed: () {
                                widget.onSave(googlePlaceUtil.prediction);
                              },
                              radius: 5,
                              text: "${widget.saveText}",
                              fontSize: FontUtil().l,
                              fontFamily: FontUtil().primary,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: FloatingActionButton(
                            onPressed: () {
                              myLocation();
                            },
                            backgroundColor: Colors.white,
                            child: Icon(
                              FontAwesomeRegular(FontAwesomeId.fa_location),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
