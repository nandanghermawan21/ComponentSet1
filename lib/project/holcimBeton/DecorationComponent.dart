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
        '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 825.7 164.5"><title>Logo SBBI 3</title><polygon points="0 0 0 74.6 96 74.6 116.6 54.1 116.6 0 0 0" style="fill:#a8c700"/><polygon points="0 163.2 0 88.6 96 88.6 116.6 109.2 116.6 163.2 0 163.2" style="fill:#565657"/><g style="isolation:isolate"><path d="M134.2,30.9c0-13.9,8.3-18.4,19.1-18.6s22.2.9,28.5,3V27.7c-6.2-.6-18.6-1-23.4-1s-8.3.3-8.3,5.7v2.4c0,4.4,1.4,5.8,6.7,5.8H167c14.3,0,17.4,11.8,17.4,19.5v4c0,16.9-10,20.2-19.6,20.2-14.7,0-20-.4-28.3-3.1V68.8c3.8.4,15.7,1.1,24.7,1.1,4.1,0,7.4-.9,7.4-5.1V62c0-3.5-1.1-5.6-5.8-5.6h-9.9c-17.7,0-18.7-14-18.7-19.5Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M220.2,12.4c16.6,0,28.7,3.2,28.7,36.3,0,31.1-11.4,35.2-28.7,35.2s-28.8-3.1-28.8-35.2S204,12.4,220.2,12.4Zm0,57.1c10,0,12.9-3.6,12.9-20.8,0-19.5-3.1-21.9-12.9-21.9s-13,1.7-13,21.9C207.2,65.9,209.3,69.5,220.2,69.5Z" transform="translate(0 -11.4)" style="fill:#080c0f"/></g><g style="isolation:isolate"><path d="M256.9,12.9h15.8V64.1c0,5.1,3.2,5,6,5H301V83.5H272.1c-8.1,0-15.2-3.5-15.2-14.3Z" transform="translate(0 -11.4)" style="fill:#080c0f"/></g><g style="isolation:isolate"><path d="M304.9,12.9h15.8V52.6c0,13.1,2,17,11.8,17s11.2-4.4,11.2-17V12.9h15.9V52.6c0,31.2-15.4,31.4-27.1,31.4s-27.6.8-27.6-31.4Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M367.6,30.9c0-13.9,8.3-18.4,19.1-18.6s22.2.9,28.4,3V27.7c-6.1-.6-18.6-1-23.4-1s-8.3.3-8.3,5.7v2.4c0,4.4,1.4,5.8,6.8,5.8h10.2c14.2,0,17.3,11.8,17.3,19.5v4c0,16.9-10,20.2-19.5,20.2-14.8,0-20.1-.4-28.4-3.1V68.8c3.9.4,15.7,1.1,24.8,1.1,4,0,7.3-.9,7.3-5.1V62c0-3.5-1-5.6-5.8-5.6h-9.9c-17.6,0-18.6-14-18.6-19.5Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M425.7,12.9h15.8V83.5H425.7Z" transform="translate(0 -11.4)" style="fill:#080c0f"/></g><g style="isolation:isolate"><path d="M135.2,104.8H165c14.8,0,20.5,8.1,20.5,19.1,0,6.2-3,13.9-10,14.9,6.5,1.1,11.4,7.3,11.4,15.5,0,14.4-6.8,21.1-21.6,21.1H135.2ZM163.9,132c4,0,6-2.6,6-6.6s-3.2-6.9-6-6.9H151V132Zm.7,29.7c4,0,6.5-2.1,6.5-8.2,0-4.4-1.7-8.6-6.5-8.6H151v16.8Z" transform="translate(0 -11.4)" style="fill:#080c0f"/></g><path d="M211.5,104.8h18.4l22.2,70.6H235.6L231,161.2H209.7l-4.6,14.2H188.5Zm16,42.7-6.6-22.4-7.3,22.4Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M258.3,104.8h16l24.5,41.4V104.8h15.8v70.6H298.8l-24.6-40.7v40.7H258.3Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M345.2,104c12.7,0,16.6.4,28.1,3.3v12.3a191.5,191.5,0,0,0-23.8-1.9c-9.9,0-11.7,5.5-11.7,22.2s1.4,21.3,10.7,21.3a12.8,12.8,0,0,0,9.8-4.4V146.6h-7.5v-10c4.2-1.9,10.1-2.3,16.8-2.3,2.1,0,4.2,0,6.5.2v40.9H362.9l-4.4-4.7c-2.9,3.2-5.6,4.8-13.6,5.2-20,.9-22.9-16.1-22.9-36.2S326,104,345.2,104Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M382.8,104.8h15.8v39.7c0,13.1,2,17,11.8,17s11.2-4.4,11.2-17V104.8h15.9v39.7c0,31.2-15.5,31.4-27.1,31.4s-27.6.8-27.6-31.4Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M446.4,104.8h16l24.5,41.4V104.8h15.9v70.6H486.9l-24.5-40.7v40.7h-16Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M535.8,104.8h29.8c14.8,0,20.5,8.1,20.5,19.1,0,6.2-3,13.9-10,14.9,6.5,1.1,11.4,7.3,11.4,15.5,0,14.4-6.7,21.1-21.6,21.1H535.8ZM564.6,132c3.9,0,5.9-2.6,5.9-6.6s-3.1-6.9-5.9-6.9h-13V132Zm.6,29.7c4,0,6.5-2.1,6.5-8.2,0-4.4-1.6-8.6-6.5-8.6H551.6v16.8Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M594,120.2c0-13.3,9.7-15.5,16.5-15.4,0,0,22.8.4,31.2,1.6v13.2H614.8c-5,0-5,2.8-5,5.4v8l27.4.9V147l-27.4.9v8c0,5.1,3.2,5,6,5h25.9v13.2c-7.4.9-30.3,1.6-30.3,1.6-6.2.3-17.4-1.1-17.4-15Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><g style="isolation:isolate"><path d="M646.4,104.8h53.3v14.4h-19v56.2H664.9V119.2H646.4Z" transform="translate(0 -11.4)" style="fill:#080c0f"/></g><path d="M732.7,104.3c16.7,0,28.7,3.2,28.7,36.3,0,31.1-11.4,35.2-28.7,35.2s-28.8-3.1-28.8-35.2S716.5,104.3,732.7,104.3Zm0,57.1c10,0,12.9-3.6,12.9-20.8,0-19.5-3.1-21.9-12.9-21.9s-12.9,1.7-12.9,21.9C719.8,157.8,721.8,161.4,732.7,161.4Z" transform="translate(0 -11.4)" style="fill:#080c0f"/><path d="M769.4,104.8h16l24.5,41.4V104.8h15.8v70.6H809.9l-24.6-40.7v40.7H769.4Z" transform="translate(0 -11.4)" style="fill:#080c0f"/></svg>';
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
          height: 25,
          width: 80,
          colorBlendMode: BlendMode.clear,
        ),
      ),
    );
  }
}
