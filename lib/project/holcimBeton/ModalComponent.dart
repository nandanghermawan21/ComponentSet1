import 'package:component_set1/custom/material_custom.dart';
import 'package:component_set1/component/ModalComponent.dart' as modal;
import 'package:flutter_svg/flutter_svg.dart';

class ModalComponent {
  static String modalBackground =
      '<svg xmlns="http://www.w3.org/2000/svg" width="243.966" height="182.341" viewBox="0 0 243.966 182.341"><g id="Group_519" data-name="Group 519" transform="translate(0 -484.959)"><path id="Path_204" data-name="Path 204" d="M-753,12632.357l111.038-88.586,33.127,48.845-10.825,28.351-99.2,80.181h29.426l85.329-66.393,19.107-44.288-50.623-71.508h-6.335L-753,12608Z" transform="translate(753 -12034)" fill="#a8c700" opacity="0.24"/><path id="Path_205" data-name="Path 205" d="M155.479,244.436l73.362-58.8,45.985-6.334,45.855,65.429H295.808L265.657,200.84,237.54,204.69l-50.172,40.484Z" transform="translate(-76.716 422.125)" fill="#7d7d81" opacity="0.24"/></g></svg>';

  static void bottonModal(
    BuildContext context, {
    double height = 200,
    Widget child,
  }) {
    height = height > 500 ? 500 : height;
    return modal.ModalComponent.bottomModalWithCorner(context,
        // backgroundColor: Colors.red,
        handleColor: Colors.transparent,
        backgroundWidget: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: height > 300 ? 300 : height,
            width: double.infinity,
            // child: SvgPicture.string(
            //   modalBackground,
            //   fit: BoxFit.fitHeight,
            //   alignment: Alignment.bottomLeft,
            // ),
          ),
        ),
        height: height,
        child: Container(
            height: (height - 21).toDouble(),
            width: double.infinity,
            // color: Colors.red,
            child: child));
  }
}
