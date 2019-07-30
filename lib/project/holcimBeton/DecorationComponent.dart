import 'package:component_set1/component/DecorationComponent.dart'
    as decorationBase;
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:flutter/material.dart';
import 'package:component_set1/util/ColorUtil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DecorationComponent {
  static BoxDecoration boxDecoration(
      {bool dark = true,
      String img = "assets/backgorundDark.png",
      Alignment aligment = Alignment.topCenter}) {
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
        image: AssetImage(img),
        fit: BoxFit.fitWidth,
        alignment: aligment,
      ),
    );
  }

  static Widget logo({
    EdgeInsetsGeometry margin
  }) {
    final String sbbiLogo =
        '<svg xmlns="http://www.w3.org/2000/svg" width="166.601" height="14.844" viewBox="0 0 166.601 14.844"><path id="InovaTrack" d="M18.075,250.049l-3.88,14.55H6.308L9.3,253.539h3.627l.084-.344H9.323A4.386,4.386,0,0,1,6.2,251.917,5.739,5.739,0,0,1,5,250.049Zm17.377,6.415c-.19-2.064-1.835-3.072-4.914-3l-10.144.246L17.485,264.6h6.5l.337-1.081c1.1-3.392,2.067-5.432,2.91-6.193a2.966,2.966,0,0,1,1.982-.639c-.274.811-.485,1.475-.633,2.04l-1.6,5.874h6.6l1.6-5.874a7.032,7.032,0,0,0,.274-2.261Zm18.115,3.146a5.518,5.518,0,0,1-2.552,3.613,12.091,12.091,0,0,1-6.432,1.622h-1.1a11.508,11.508,0,0,1-4.323-1.032,4.449,4.449,0,0,1-2.784-3.662,5.59,5.59,0,0,1,.105-1.548,5.84,5.84,0,0,1,3.606-4.1,13.04,13.04,0,0,1,5.357-1.032h1.076a10.894,10.894,0,0,1,4.344,1.057,4.486,4.486,0,0,1,2.784,3.736A5.91,5.91,0,0,1,53.567,259.61Zm-6.6-.885a4.774,4.774,0,0,0,.042-1.2,1.337,1.337,0,0,0-1.476-1.376c-.907,0-1.982.983-2.362,2.949a7.471,7.471,0,0,0-.127,1.573c.105.959.569,1.425,1.455,1.425,1.286,0,2.109-1.131,2.467-3.367Zm25.918-5.014L64.112,264.6H57.3l-3.121-10.888H60.59l1.054,6.832,4.471-6.832Zm17.23,0c-2.51-.172-6.01-.27-10.5-.27a8.832,8.832,0,0,0-5.209,1.6,5.9,5.9,0,0,0-2.678,5.112c0,.221.021.467.042.713a3.944,3.944,0,0,0,1.561,3.023,4.922,4.922,0,0,0,3.016.885,6.04,6.04,0,0,0,5.293-3.023l-.759,2.851H87.2l2.91-10.888Zm-7.149,2.433-.422,1.278A11.745,11.745,0,0,1,81.32,260.1c-.675,1.032-1.371,1.573-2.088,1.573s-.78-.418-.78-1.253A5.716,5.716,0,0,1,79,258.11c.548-1.3,1.35-1.966,2.383-1.966Zm26.551-6.12-2.531,3.49h-3.48L100.6,264.6H92.729l2.931-11.06H99.1l.084-.344H94.8a4.511,4.511,0,0,1-4.323-3.146Zm10.46,7.127-.274-3.072q-.063-.664-2.847-.664c-1.2,0-4.2.1-8.963.295L105,264.6h6.5l.337-1.081a23.766,23.766,0,0,1,1.582-3.957c1.139-2.064,2.488-3.1,4.028-3.1a3.55,3.55,0,0,1,2.531.688Zm18.073-3.441-2.91,10.888h-6.348l.78-2.851a6.073,6.073,0,0,1-5.314,3.023,4.858,4.858,0,0,1-2.995-.885,4.039,4.039,0,0,1-1.582-3.023c-.021-.246-.021-.492-.021-.713a5.9,5.9,0,0,1,2.678-5.112,8.8,8.8,0,0,1,5.209-1.6C132.018,253.441,135.518,253.539,138.049,253.711Zm-7.149,2.433h-1.582c-1.033,0-1.835.664-2.4,1.966a6.106,6.106,0,0,0-.548,2.31c0,.836.274,1.253.78,1.253a3.151,3.151,0,0,0,2.088-1.573,11.767,11.767,0,0,0,1.244-2.679l.422-1.278Zm20.815.983a4.341,4.341,0,0,0-2.91-.836,4.764,4.764,0,0,0-3.416,1.229,3.188,3.188,0,0,0-.738,2.089,2.456,2.456,0,0,0,.021.393,1.519,1.519,0,0,0,1.75,1.5,9.544,9.544,0,0,0,4.872-1.131l-1.033,3.318c-.021.123-.232.27-.612.442a9.894,9.894,0,0,1-4.07.664,10.806,10.806,0,0,1-4.829-1.032,4.721,4.721,0,0,1-2.678-3.539c0-.172-.021-.344-.021-.516a5.25,5.25,0,0,1,2.172-4.2,11.918,11.918,0,0,1,7.128-2.089,10.24,10.24,0,0,1,4.07.639l.3,3.072Zm19.887-3.318-.59,2.581a4.163,4.163,0,0,0-.991-.1,4.683,4.683,0,0,0-2.889.86l-1.835,1.376,3.332,6.07h-7l-1.75-5.432-1.455,5.432h-6.538l3.9-14.6h6.559l-2.067,7.594a6.522,6.522,0,0,1,1.582-2.089,10.077,10.077,0,0,1,6.727-2.089A9.434,9.434,0,0,1,171.6,253.809Z" transform="translate(-5 -250)" fill="#fff" fill-rule="evenodd"/></svg>';
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.fromLTRB(14, 7, 14, 7),
        margin: margin ?? EdgeInsets.only(top: 60, left: 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 3, color: HolcimBetonColor().greenColor),
          boxShadow: [
            decorationBase.CustomBoxShadow(
                color: ColorUtil().greenColor,
                blurRadius: 6.0,
                blurStyle: BlurStyle.outer),
          ],
        ),
        child: SvgPicture.string(
          sbbiLogo,
          allowDrawingOutsideViewBox: true,
          height: 15,
          width: 80,
          colorBlendMode: BlendMode.clear,
        ),
      ),
    );
  }
}
