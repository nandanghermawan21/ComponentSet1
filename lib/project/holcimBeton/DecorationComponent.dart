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
    final String sbbiLogo = '<svg xmlns="http://www.w3.org/2000/svg" width="218.818" height="41.132" viewBox="0 0 218.818 41.132"><g id="Group_472" data-name="Group 472" transform="translate(-78.7 -91.556)"><path id="InovaTrack" d="M18.075,250.049l-3.88,14.55H6.308L9.3,253.539h3.627l.084-.344H9.323A4.386,4.386,0,0,1,6.2,251.917,5.739,5.739,0,0,1,5,250.049Zm17.377,6.415c-.19-2.064-1.835-3.072-4.914-3l-10.144.246L17.485,264.6h6.5l.337-1.081c1.1-3.392,2.067-5.432,2.91-6.193a2.966,2.966,0,0,1,1.982-.639c-.274.811-.485,1.475-.633,2.04l-1.6,5.874h6.6l1.6-5.874a7.032,7.032,0,0,0,.274-2.261Zm18.115,3.146a5.518,5.518,0,0,1-2.552,3.613,12.091,12.091,0,0,1-6.432,1.622h-1.1a11.508,11.508,0,0,1-4.323-1.032,4.449,4.449,0,0,1-2.784-3.662,5.59,5.59,0,0,1,.105-1.548,5.84,5.84,0,0,1,3.606-4.1,13.04,13.04,0,0,1,5.357-1.032h1.076a10.894,10.894,0,0,1,4.344,1.057,4.486,4.486,0,0,1,2.784,3.736A5.91,5.91,0,0,1,53.567,259.61Zm-6.6-.885a4.774,4.774,0,0,0,.042-1.2,1.337,1.337,0,0,0-1.476-1.376c-.907,0-1.982.983-2.362,2.949a7.471,7.471,0,0,0-.127,1.573c.105.959.569,1.425,1.455,1.425,1.286,0,2.109-1.131,2.467-3.367Zm25.918-5.014L64.112,264.6H57.3l-3.121-10.888H60.59l1.054,6.832,4.471-6.832Zm17.23,0c-2.51-.172-6.01-.27-10.5-.27a8.832,8.832,0,0,0-5.209,1.6,5.9,5.9,0,0,0-2.678,5.112c0,.221.021.467.042.713a3.944,3.944,0,0,0,1.561,3.023,4.922,4.922,0,0,0,3.016.885,6.04,6.04,0,0,0,5.293-3.023l-.759,2.851H87.2l2.91-10.888Zm-7.149,2.433-.422,1.278A11.745,11.745,0,0,1,81.32,260.1c-.675,1.032-1.371,1.573-2.088,1.573s-.78-.418-.78-1.253A5.716,5.716,0,0,1,79,258.11c.548-1.3,1.35-1.966,2.383-1.966Zm26.551-6.12-2.531,3.49h-3.48L100.6,264.6H92.729l2.931-11.06H99.1l.084-.344H94.8a4.511,4.511,0,0,1-4.323-3.146Zm10.46,7.127-.274-3.072q-.063-.664-2.847-.664c-1.2,0-4.2.1-8.963.295L105,264.6h6.5l.337-1.081a23.766,23.766,0,0,1,1.582-3.957c1.139-2.064,2.488-3.1,4.028-3.1a3.55,3.55,0,0,1,2.531.688Zm18.073-3.441-2.91,10.888h-6.348l.78-2.851a6.073,6.073,0,0,1-5.314,3.023,4.858,4.858,0,0,1-2.995-.885,4.039,4.039,0,0,1-1.582-3.023c-.021-.246-.021-.492-.021-.713a5.9,5.9,0,0,1,2.678-5.112,8.8,8.8,0,0,1,5.209-1.6C132.018,253.441,135.518,253.539,138.049,253.711Zm-7.149,2.433h-1.582c-1.033,0-1.835.664-2.4,1.966a6.106,6.106,0,0,0-.548,2.31c0,.836.274,1.253.78,1.253a3.151,3.151,0,0,0,2.088-1.573,11.767,11.767,0,0,0,1.244-2.679l.422-1.278Zm20.815.983a4.341,4.341,0,0,0-2.91-.836,4.764,4.764,0,0,0-3.416,1.229,3.188,3.188,0,0,0-.738,2.089,2.456,2.456,0,0,0,.021.393,1.519,1.519,0,0,0,1.75,1.5,9.544,9.544,0,0,0,4.872-1.131l-1.033,3.318c-.021.123-.232.27-.612.442a9.894,9.894,0,0,1-4.07.664,10.806,10.806,0,0,1-4.829-1.032,4.721,4.721,0,0,1-2.678-3.539c0-.172-.021-.344-.021-.516a5.25,5.25,0,0,1,2.172-4.2,11.918,11.918,0,0,1,7.128-2.089,10.24,10.24,0,0,1,4.07.639l.3,3.072Zm19.887-3.318-.59,2.581a4.163,4.163,0,0,0-.991-.1,4.683,4.683,0,0,0-2.889.86l-1.835,1.376,3.332,6.07h-7l-1.75-5.432-1.455,5.432h-6.538l3.9-14.6h6.559l-2.067,7.594a6.522,6.522,0,0,1,1.582-2.089,10.077,10.077,0,0,1,6.727-2.089A9.434,9.434,0,0,1,171.6,253.809Z" transform="translate(104 -158.444)" fill="#fff" fill-rule="evenodd"/><path id="Path_207" data-name="Path 207" d="M-101.391-8.017q-.47,0-1.447-.076-.952-.07-1.447-.063h-.451q.019.876.171,2.844.14,1.834.14,2.85,0,.222.044.673t.044.679a1.8,1.8,0,0,1-.14.743.585.585,0,0,1-.552.419.676.676,0,0,1-.457-.178.58.58,0,0,1-.2-.457,1.91,1.91,0,0,1,.032-.286,1.91,1.91,0,0,0,.032-.286q0-.311-.041-.933t-.041-.939q0-.908-.146-2.552-.152-1.777-.171-2.552l-.578.006a9.21,9.21,0,0,1-2.184-.2.6.6,0,0,1-.514-.628.69.69,0,0,1,.165-.457.563.563,0,0,1,.489-.2q.222.013,1.016.114a9.02,9.02,0,0,0,1.028.076q.381,0,1.155-.016t1.155-.016q.489,0,1.45.07t1.45.07a.615.615,0,0,1,.457.187.639.639,0,0,1,.184.467.631.631,0,0,1-.184.46A.615.615,0,0,1-101.391-8.017Zm6.011,3.326q-.044.793-.635.793-.546,0-.546-.628,0-.121-.019-.444L-96.6-5.5a3.342,3.342,0,0,0-1.606.565,3.041,3.041,0,0,0-.939,1.244l.013,3.479a.561.561,0,0,1-.628.641q-.559,0-.559-.641V-4.672q0-.209.016-.628t.016-.628q0-.641.559-.641.622,0,.628,1.054A3.815,3.815,0,0,1-96.4-6.69a.856.856,0,0,1,.768.387,2.155,2.155,0,0,1,.254,1.168Q-95.374-4.805-95.38-4.691Zm6.265,5.11q-.121,0-.438-.279a2.842,2.842,0,0,1-.425-.463,8.153,8.153,0,0,1-1.073.5,2.363,2.363,0,0,1-.774.168A2.625,2.625,0,0,1-93.99-.5a3.776,3.776,0,0,1-.641-2.412,3.643,3.643,0,0,1,1.057-2.628,3.39,3.39,0,0,1,2.523-1.092,3.261,3.261,0,0,1,1.238.286q.863.355.863.857a.43.43,0,0,1-.127.3,4.632,4.632,0,0,0-.1.793q-.035.552-.041,1.416a5.179,5.179,0,0,0,.108,1.244,9.56,9.56,0,0,0,.4,1.117q.044.114.146.336l.038.108A.547.547,0,0,1-88.7.254.588.588,0,0,1-89.115.419Zm-1.32-4.412a5.507,5.507,0,0,1,.035-.594q.035-.321.1-.682a3.085,3.085,0,0,0-.4-.178.891.891,0,0,0-.27-.057,2.2,2.2,0,0,0-1.7.8,2.7,2.7,0,0,0-.714,1.85,2.709,2.709,0,0,0,.368,1.562,1.264,1.264,0,0,0,1.1.521A2.212,2.212,0,0,0-90.873-.99a3.8,3.8,0,0,0,.641-.482A23.072,23.072,0,0,1-90.435-3.993ZM-82.551.451q-.546,0-.616-.6l-.178-1.39a11.74,11.74,0,0,1-.089-1.39q0-.178.022-.6t.022-.6q0-1.371-.508-1.371a1.775,1.775,0,0,0-1.358.844,5.751,5.751,0,0,0-.914,1.942q-.013.248-.057.622a5.168,5.168,0,0,0-.038.616q0,.19.038.571t.038.571a.633.633,0,0,1-.175.463A.6.6,0,0,1-86.811.3a.6.6,0,0,1-.451-.178.64.64,0,0,1-.171-.463q0-.19-.041-.571t-.041-.571q0-.654.092-1.812t.092-1.812q0-.2-.022-.6t-.022-.6a.6.6,0,0,1,.181-.448.619.619,0,0,1,.448-.175q.584,0,.641.825l.019.743A2.89,2.89,0,0,1-83.9-6.786a1.427,1.427,0,0,1,1.416.9,4.663,4.663,0,0,1,.3,1.765v.641l-.006.59a8.8,8.8,0,0,0,.136,1.362,8.78,8.78,0,0,1,.136,1.355A.6.6,0,0,1-82.1.276.627.627,0,0,1-82.551.451Zm6.221-5.338a.521.521,0,0,1-.489-.235,2.186,2.186,0,0,1-.165-.686q-.476.121-1.466.444-1.022.406-1.028,1a2.149,2.149,0,0,0,.375.1,6.126,6.126,0,0,1,2.171.717A2.157,2.157,0,0,1-75.9-1.612a1.7,1.7,0,0,1-.9,1.562,3.7,3.7,0,0,1-1.879.432A4.539,4.539,0,0,1-80.26.1q-.978-.355-.978-.99a.6.6,0,0,1,.2-.444.641.641,0,0,1,.454-.19.854.854,0,0,1,.508.3,1.455,1.455,0,0,0,.686.241,4.186,4.186,0,0,0,.717.076,3.154,3.154,0,0,0,.939-.127q.59-.184.59-.584,0-.863-1.206-1.168l-.66-.146a3.532,3.532,0,0,1-1.2-.432,1.217,1.217,0,0,1-.514-1.073,1.94,1.94,0,0,1,1.25-1.892,9.733,9.733,0,0,1,1.219-.409,9.386,9.386,0,0,0,1.2-.4,1.39,1.39,0,0,1,.565-.114.6.6,0,0,1,.448.178.633.633,0,0,1,.175.463,2.707,2.707,0,0,0,.079.54,2.707,2.707,0,0,1,.079.54.633.633,0,0,1-.175.463A.6.6,0,0,1-76.331-4.888Zm4.742,5.11a5.455,5.455,0,0,1-1.4-.2L-73,3.053a.625.625,0,0,1-.175.457.6.6,0,0,1-.448.178.6.6,0,0,1-.448-.178.625.625,0,0,1-.175-.457l.019-2.539V-2.019q-.019-1.39-.1-2.533l-.1-1.289a1.609,1.609,0,0,1,.165-.762.6.6,0,0,1,.552-.375.554.554,0,0,1,.416.175.594.594,0,0,1,.168.428,2.027,2.027,0,0,1-.019.209q-.032.2-.044.362a4.845,4.845,0,0,1,1.054-.562,2.805,2.805,0,0,1,.971-.187,2.006,2.006,0,0,1,1.9,1.155,5.25,5.25,0,0,1,.476,2.418,3.423,3.423,0,0,1-.736,2.26A2.57,2.57,0,0,1-71.589.222Zm.438-5.5a2.137,2.137,0,0,0-1.054.26,4.482,4.482,0,0,0-.851.673q.083,1.441.083,3.028a3.825,3.825,0,0,0,1.384.267,1.4,1.4,0,0,0,1.212-.59,2.266,2.266,0,0,0,.362-1.333,4.08,4.08,0,0,0-.282-1.73A.909.909,0,0,0-71.151-5.281Zm6.2,5.656A2.474,2.474,0,0,1-66.79-.413a3.376,3.376,0,0,1-.9-2.355,4.106,4.106,0,0,1,.724-2.526,2.841,2.841,0,0,1,2.476-1.289,2.087,2.087,0,0,1,1.923,1.162,4.461,4.461,0,0,1,.5,2.26A4.107,4.107,0,0,1-62.8-.755,2.527,2.527,0,0,1-64.956.375Zm.381-5.668a1.6,1.6,0,0,0-1.454.889,3.225,3.225,0,0,0-.413,1.638,1.968,1.968,0,0,0,.5,1.435,1.337,1.337,0,0,0,.984.425,1.541,1.541,0,0,0,1.136-.482,2.04,2.04,0,0,0,.571-1.441Q-63.159-5.288-64.575-5.294Zm9.014.6q-.044.793-.635.793-.546,0-.546-.628,0-.121-.019-.444L-56.78-5.5a3.342,3.342,0,0,0-1.606.565,3.041,3.041,0,0,0-.939,1.244l.013,3.479a.561.561,0,0,1-.628.641q-.559,0-.559-.641V-4.672q0-.209.016-.628t.016-.628q0-.641.559-.641.622,0,.628,1.054a3.815,3.815,0,0,1,2.7-1.174.856.856,0,0,1,.768.387,2.155,2.155,0,0,1,.254,1.168Q-55.555-4.805-55.561-4.691Zm5.554-.717q-.133,0-.314-.013t-.314-.013q-.146,0-.863.1l.121,3.751.006.279.006.324q.025,1.39-.667,1.39a.646.646,0,0,1-.441-.165.527.527,0,0,1-.187-.413q0-.241.019-.724t.019-.724l-.127-3.707q-.463-.019-1.409-.108a.576.576,0,0,1-.565-.628.654.654,0,0,1,.171-.463.572.572,0,0,1,.438-.184l1.333.108q0-.324-.029-.866t-.029-.784a.582.582,0,0,1,.184-.441.63.63,0,0,1,.451-.175q.571,0,.667.933.019.235.019.565L-51.53-7l-.006.394q.787-.1.9-.1a3.621,3.621,0,0,1,.863.063.557.557,0,0,1,.387.6.636.636,0,0,1-.175.46A.6.6,0,0,1-50.007-5.408ZM-43.17.419q-.121,0-.438-.279a2.842,2.842,0,0,1-.425-.463,8.153,8.153,0,0,1-1.073.5,2.363,2.363,0,0,1-.774.168A2.625,2.625,0,0,1-48.045-.5a3.776,3.776,0,0,1-.641-2.412A3.643,3.643,0,0,1-47.63-5.535a3.39,3.39,0,0,1,2.523-1.092,3.261,3.261,0,0,1,1.238.286q.863.355.863.857a.43.43,0,0,1-.127.3,4.632,4.632,0,0,0-.1.793q-.035.552-.041,1.416a5.179,5.179,0,0,0,.108,1.244,9.558,9.558,0,0,0,.4,1.117q.044.114.146.336l.038.108a.547.547,0,0,1-.178.419A.588.588,0,0,1-43.17.419Zm-1.32-4.412a5.508,5.508,0,0,1,.035-.594q.035-.321.1-.682a3.085,3.085,0,0,0-.4-.178.891.891,0,0,0-.27-.057,2.2,2.2,0,0,0-1.7.8,2.7,2.7,0,0,0-.714,1.85,2.709,2.709,0,0,0,.368,1.562,1.264,1.264,0,0,0,1.1.521A2.212,2.212,0,0,0-44.929-.99a3.8,3.8,0,0,0,.641-.482A23.071,23.071,0,0,1-44.491-3.993Zm7.262-1.416q-.133,0-.314-.013t-.314-.013q-.146,0-.863.1l.121,3.751.006.279.006.324q.025,1.39-.667,1.39A.646.646,0,0,1-39.7.241a.527.527,0,0,1-.187-.413q0-.241.019-.724t.019-.724l-.127-3.707q-.463-.019-1.409-.108a.576.576,0,0,1-.565-.628.654.654,0,0,1,.171-.463.572.572,0,0,1,.438-.184L-40-6.6q0-.324-.029-.866t-.029-.784a.582.582,0,0,1,.184-.441.63.63,0,0,1,.451-.175q.571,0,.667.933.019.235.019.565L-38.752-7l-.006.394q.787-.1.9-.1a3.621,3.621,0,0,1,.863.063.557.557,0,0,1,.387.6.636.636,0,0,1-.175.46A.6.6,0,0,1-37.229-5.408Zm3.091-2.628a.731.731,0,0,1-.527-.216.7.7,0,0,1-.222-.521.7.7,0,0,1,.222-.521.731.731,0,0,1,.527-.216.72.72,0,0,1,.524.216.7.7,0,0,1,.219.521.7.7,0,0,1-.219.521A.72.72,0,0,1-34.138-8.036Zm.286,5.154q0,.381.022,1.139T-33.808-.6a.631.631,0,0,1-.171.457.6.6,0,0,1-.451.178.6.6,0,0,1-.448-.178A.625.625,0,0,1-35.052-.6q0-.381-.022-1.139T-35.1-2.882q0-.6.063-1.489t.063-1.489a.633.633,0,0,1,.175-.463.6.6,0,0,1,.448-.178.6.6,0,0,1,.448.178.633.633,0,0,1,.175.463q0,.6-.063,1.489T-33.852-2.882ZM-29.326.375a2.474,2.474,0,0,1-1.834-.787,3.376,3.376,0,0,1-.9-2.355,4.106,4.106,0,0,1,.724-2.526,2.841,2.841,0,0,1,2.476-1.289,2.087,2.087,0,0,1,1.923,1.162,4.461,4.461,0,0,1,.5,2.26,4.107,4.107,0,0,1-.736,2.406A2.527,2.527,0,0,1-29.326.375Zm.381-5.668a1.6,1.6,0,0,0-1.454.889,3.225,3.225,0,0,0-.413,1.638,1.968,1.968,0,0,0,.5,1.435,1.337,1.337,0,0,0,.984.425A1.541,1.541,0,0,0-28.19-1.39a2.04,2.04,0,0,0,.571-1.441Q-27.53-5.288-28.945-5.294ZM-20,.451q-.546,0-.616-.6l-.178-1.39a11.739,11.739,0,0,1-.089-1.39q0-.178.022-.6t.022-.6q0-1.371-.508-1.371a1.775,1.775,0,0,0-1.358.844,5.751,5.751,0,0,0-.914,1.942q-.013.248-.057.622a5.168,5.168,0,0,0-.038.616q0,.19.038.571t.038.571a.633.633,0,0,1-.175.463A.6.6,0,0,1-24.261.3a.6.6,0,0,1-.451-.178.64.64,0,0,1-.171-.463q0-.19-.041-.571t-.041-.571q0-.654.092-1.812t.092-1.812q0-.2-.022-.6t-.022-.6a.6.6,0,0,1,.181-.448.619.619,0,0,1,.448-.175q.584,0,.641.825l.019.743a2.89,2.89,0,0,1,2.19-1.422,1.427,1.427,0,0,1,1.416.9,4.663,4.663,0,0,1,.3,1.765v.641l-.006.59A8.8,8.8,0,0,0-19.5-1.533a8.779,8.779,0,0,1,.136,1.355.6.6,0,0,1-.181.454A.627.627,0,0,1-20,.451ZM-4.748.527A.654.654,0,0,1-5.313.171,3.378,3.378,0,0,1-5.656-.844l-.229-1.092q-.26-1.016-.825-4.481L-7.979-2.59l-.375,1.206A6.911,6.911,0,0,1-8.83-.209a.8.8,0,0,1-.717.482.655.655,0,0,1-.59-.406,3.492,3.492,0,0,1-.254-.679l-.184-.7q-.641-2.241-1.13-4.8l-.229,1.136-.819,3.352A13.762,13.762,0,0,1-13.07-.083a.656.656,0,0,1-.628.5.61.61,0,0,1-.5-.222.709.709,0,0,1-.159-.47,9.836,9.836,0,0,1,.438-2.6l.7-2.558.368-2a5.393,5.393,0,0,1,.59-1.834.746.746,0,0,1,.628-.368.659.659,0,0,1,.616.47,11.589,11.589,0,0,1,.533,2.3,37.4,37.4,0,0,0,1.047,4.52A47.056,47.056,0,0,0-7.808-7.439l.19-.927a3.347,3.347,0,0,1,.3-.9.753.753,0,0,1,.679-.47q.546,0,.832,1.054a13.1,13.1,0,0,1,.248,1.5,36.671,36.671,0,0,0,.933,4.9l.311,1.092A6.2,6.2,0,0,1-4.075-.114a.588.588,0,0,1-.206.457A.682.682,0,0,1-4.748.527Zm7-.108q-.121,0-.438-.279A2.842,2.842,0,0,1,1.39-.324a8.153,8.153,0,0,1-1.073.5A2.363,2.363,0,0,1-.457.343,2.625,2.625,0,0,1-2.622-.5a3.776,3.776,0,0,1-.641-2.412A3.643,3.643,0,0,1-2.206-5.535,3.39,3.39,0,0,1,.317-6.627a3.261,3.261,0,0,1,1.238.286q.863.355.863.857a.43.43,0,0,1-.127.3,4.632,4.632,0,0,0-.1.793q-.035.552-.041,1.416A5.179,5.179,0,0,0,2.26-1.727a9.559,9.559,0,0,0,.4,1.117q.044.114.146.336l.038.108a.547.547,0,0,1-.178.419A.588.588,0,0,1,2.253.419ZM.933-3.993a5.508,5.508,0,0,1,.035-.594q.035-.321.1-.682a3.085,3.085,0,0,0-.4-.178A.891.891,0,0,0,.4-5.5a2.2,2.2,0,0,0-1.7.8,2.7,2.7,0,0,0-.714,1.85,2.709,2.709,0,0,0,.368,1.562,1.264,1.264,0,0,0,1.1.521A2.212,2.212,0,0,0,.5-.99a3.8,3.8,0,0,0,.641-.482A23.071,23.071,0,0,1,.933-3.993ZM8.817.451q-.546,0-.616-.6l-.178-1.39a11.739,11.739,0,0,1-.089-1.39q0-.178.022-.6t.022-.6q0-1.371-.508-1.371a1.775,1.775,0,0,0-1.358.844A5.751,5.751,0,0,0,5.2-2.717q-.013.248-.057.622a5.168,5.168,0,0,0-.038.616q0,.19.038.571t.038.571a.633.633,0,0,1-.175.463A.6.6,0,0,1,4.558.3.6.6,0,0,1,4.107.127a.64.64,0,0,1-.171-.463q0-.19-.041-.571t-.041-.571q0-.654.092-1.812T4.037-5.1q0-.2-.022-.6t-.022-.6a.6.6,0,0,1,.181-.448.619.619,0,0,1,.448-.175q.584,0,.641.825l.019.743a2.89,2.89,0,0,1,2.19-1.422,1.427,1.427,0,0,1,1.416.9,4.663,4.663,0,0,1,.3,1.765v.641l-.006.59a8.8,8.8,0,0,0,.136,1.362A8.779,8.779,0,0,1,9.452-.178a.6.6,0,0,1-.181.454A.627.627,0,0,1,8.817.451ZM15.71.419q-.121,0-.438-.279a2.842,2.842,0,0,1-.425-.463,8.153,8.153,0,0,1-1.073.5A2.363,2.363,0,0,1,13,.343,2.625,2.625,0,0,1,10.835-.5a3.776,3.776,0,0,1-.641-2.412,3.643,3.643,0,0,1,1.057-2.628,3.39,3.39,0,0,1,2.523-1.092,3.261,3.261,0,0,1,1.238.286q.863.355.863.857a.43.43,0,0,1-.127.3,4.632,4.632,0,0,0-.1.793q-.035.552-.041,1.416a5.179,5.179,0,0,0,.108,1.244,9.559,9.559,0,0,0,.4,1.117q.044.114.146.336l.038.108a.547.547,0,0,1-.178.419A.588.588,0,0,1,15.71.419ZM14.39-3.993a5.508,5.508,0,0,1,.035-.594q.035-.321.1-.682a3.085,3.085,0,0,0-.4-.178.891.891,0,0,0-.27-.057,2.2,2.2,0,0,0-1.7.8,2.7,2.7,0,0,0-.714,1.85,2.709,2.709,0,0,0,.368,1.562,1.264,1.264,0,0,0,1.1.521A2.212,2.212,0,0,0,13.952-.99a3.8,3.8,0,0,0,.641-.482A23.071,23.071,0,0,1,14.39-3.993Zm8.239,1.257L22.483-.6a9.037,9.037,0,0,1-.26,2.076,2.8,2.8,0,0,1-.914,1.517,3.538,3.538,0,0,1-2.2.59,7.377,7.377,0,0,1-1.416-.114q-.8-.159-.8-.66a.494.494,0,0,1,.552-.565,4.31,4.31,0,0,1,.762.111,5.29,5.29,0,0,0,1.181.1A1.713,1.713,0,0,0,21.068,1.27a7.16,7.16,0,0,0,.324-2.38,2.6,2.6,0,0,1-.816.952,1.9,1.9,0,0,1-1.082.317,2.422,2.422,0,0,1-1.869-.784A2.888,2.888,0,0,1,16.9-2.66a3.869,3.869,0,0,1,.984-2.761A3.618,3.618,0,0,1,20.655-6.5a2.8,2.8,0,0,1,.99.152,1.256,1.256,0,0,1,.609.457q.679.019.679.755A7.32,7.32,0,0,1,22.8-3.929Q22.655-3.053,22.629-2.736ZM20.592-5.484a2.246,2.246,0,0,0-1.866.832,2.983,2.983,0,0,0-.59,1.9,2.284,2.284,0,0,0,.349,1.384A1.228,1.228,0,0,0,19.532-.9a1.668,1.668,0,0,0,1.244-.724,2.579,2.579,0,0,0,.622-1.32q.133-.686.286-2.152a1.861,1.861,0,0,0-.527-.292A1.7,1.7,0,0,0,20.592-5.484ZM27.27.292a3.585,3.585,0,0,1-2.323-.717,2.709,2.709,0,0,1-.971-2.222,4.632,4.632,0,0,1,.8-2.768A2.717,2.717,0,0,1,27.1-6.633a3.644,3.644,0,0,1,1.72.355,1.433,1.433,0,0,1,.819,1.346,1.451,1.451,0,0,1-.717,1.155,10.131,10.131,0,0,1-1.346.711L25.149-1.917a2.316,2.316,0,0,0,.885.793,2.714,2.714,0,0,0,1.235.267A3.9,3.9,0,0,0,28.3-1.022a1.633,1.633,0,0,0,.965-.549q.216-.34.463-.34a.557.557,0,0,1,.4.168.526.526,0,0,1,.175.39q0,.7-1.136,1.212A4.641,4.641,0,0,1,27.27.292ZM27.1-5.491a1.627,1.627,0,0,0-1.289.6,4.046,4.046,0,0,0-.768,1.806l1.949-.927a8.368,8.368,0,0,0,1.638-.971A2.161,2.161,0,0,0,27.1-5.491ZM39.489.527a.571.571,0,0,1-.609-.552q-.114-.7-.229-1.968l-.216-1.968a4.31,4.31,0,0,0-.216-.857q-.216-.571-.47-.571a2.221,2.221,0,0,0-.876.4,3.609,3.609,0,0,0-.8.59q-.006.6.032,1.193l.19,1.695A14.377,14.377,0,0,1,36.417.146a.636.636,0,0,1-.175.46.644.644,0,0,1-.9,0,.636.636,0,0,1-.175-.46q0-.768-.156-2.269t-.156-2.269a2.35,2.35,0,0,0-.19-1.047,3.171,3.171,0,0,0-.9.66l-.749.838a3.834,3.834,0,0,1-.324.4q0,.381-.07,1.124t-.07,1.1a3.3,3.3,0,0,0,.06.533,3.251,3.251,0,0,1,.06.5.571.571,0,0,1-.194.438.65.65,0,0,1-.454.178q-.717,0-.717-1.631,0-.381.07-1.136t.07-1.136q0-.336-.06-1.009T31.332-5.6q0-1.441.647-1.441a.619.619,0,0,1,.454.216.669.669,0,0,1,.206.47,3.357,3.357,0,0,1-.032.375,3.381,3.381,0,0,0-.032.387l.013.667A3.813,3.813,0,0,1,33.56-6.16a1.844,1.844,0,0,1,1.092-.549,1.371,1.371,0,0,1,1.371.99,2.263,2.263,0,0,1,.832-.7,2.521,2.521,0,0,1,1.1-.232A1.456,1.456,0,0,1,39.406-5.5a16.579,16.579,0,0,1,.26,1.784q.178,1.092.457,3.637a.512.512,0,0,1-.171.432A.654.654,0,0,1,39.489.527Zm5-.235a3.585,3.585,0,0,1-2.323-.717A2.709,2.709,0,0,1,41.2-2.647,4.632,4.632,0,0,1,42-5.415a2.717,2.717,0,0,1,2.323-1.219,3.644,3.644,0,0,1,1.72.355,1.433,1.433,0,0,1,.819,1.346,1.451,1.451,0,0,1-.717,1.155,10.131,10.131,0,0,1-1.346.711L42.371-1.917a2.316,2.316,0,0,0,.885.793,2.714,2.714,0,0,0,1.235.267,3.9,3.9,0,0,0,1.028-.165,1.633,1.633,0,0,0,.965-.549q.216-.34.463-.34a.557.557,0,0,1,.4.168.526.526,0,0,1,.175.39q0,.7-1.136,1.212A4.641,4.641,0,0,1,44.491.292Zm-.171-5.783a1.627,1.627,0,0,0-1.289.6,4.046,4.046,0,0,0-.768,1.806l1.949-.927a8.368,8.368,0,0,0,1.638-.971A2.161,2.161,0,0,0,44.319-5.491Zm9.2,5.941q-.546,0-.616-.6l-.178-1.39a11.739,11.739,0,0,1-.089-1.39q0-.178.022-.6t.022-.6q0-1.371-.508-1.371a1.775,1.775,0,0,0-1.358.844A5.751,5.751,0,0,0,49.9-2.717q-.013.248-.057.622a5.168,5.168,0,0,0-.038.616q0,.19.038.571t.038.571a.633.633,0,0,1-.175.463A.6.6,0,0,1,49.258.3a.6.6,0,0,1-.451-.178.64.64,0,0,1-.171-.463q0-.19-.041-.571t-.041-.571q0-.654.092-1.812T48.737-5.1q0-.2-.022-.6t-.022-.6a.6.6,0,0,1,.181-.448.619.619,0,0,1,.448-.175q.584,0,.641.825l.019.743a2.89,2.89,0,0,1,2.19-1.422,1.427,1.427,0,0,1,1.416.9,4.663,4.663,0,0,1,.3,1.765v.641l-.006.59a8.8,8.8,0,0,0,.136,1.362,8.779,8.779,0,0,1,.136,1.355.6.6,0,0,1-.181.454A.627.627,0,0,1,53.517.451ZM59.7-5.408q-.133,0-.314-.013t-.314-.013q-.146,0-.863.1l.121,3.751.006.279.006.324q.025,1.39-.667,1.39a.646.646,0,0,1-.441-.165.527.527,0,0,1-.187-.413q0-.241.019-.724t.019-.724l-.127-3.707q-.463-.019-1.409-.108a.576.576,0,0,1-.565-.628.654.654,0,0,1,.171-.463.572.572,0,0,1,.438-.184l1.333.108q0-.324-.029-.866t-.029-.784a.582.582,0,0,1,.184-.441.63.63,0,0,1,.451-.175q.571,0,.667.933.019.235.019.565L58.176-7l-.006.394q.787-.1.9-.1a3.621,3.621,0,0,1,.863.063.557.557,0,0,1,.387.6.636.636,0,0,1-.175.46A.6.6,0,0,1,59.7-5.408Zm5.732,3.828a.539.539,0,0,1,.181-.435.664.664,0,0,1,.46-.168.662.662,0,0,1,.546.355,2.434,2.434,0,0,0,.578.654,2.857,2.857,0,0,0,1.568.355,4.006,4.006,0,0,0,1.828-.425,1.673,1.673,0,0,0,1.079-1.517,1.405,1.405,0,0,0-.908-1.263,4.347,4.347,0,0,0-1.9-.432,3.7,3.7,0,0,1-1.708-.438,1.614,1.614,0,0,1-.9-1.473A2.6,2.6,0,0,1,67.539-8.43a4.282,4.282,0,0,1,2.533-.882,5.385,5.385,0,0,1,1.39.209q1.028.273,1.028.7a.5.5,0,0,1-.571.559,5,5,0,0,1-.889-.136,4.633,4.633,0,0,0-.984-.13,2.965,2.965,0,0,0-1.682.489,1.418,1.418,0,0,0-.711,1.187q0,.527.939.743a10.186,10.186,0,0,0,1.352.152,3.487,3.487,0,0,1,2.272.914,2.423,2.423,0,0,1,.749,1.8,2.753,2.753,0,0,1-1.4,2.412,5.079,5.079,0,0,1-2.812.781,5.022,5.022,0,0,1-2.126-.444A1.717,1.717,0,0,1,65.432-1.581ZM80.012-5.662l-2.2,4.748Q77,.819,76.572,1.987l-.419,1.231a.589.589,0,0,1-.571.457.664.664,0,0,1-.46-.175.561.561,0,0,1-.194-.435A15.305,15.305,0,0,1,76.3-.609L74.026-4.983l-.286-.463a1.026,1.026,0,0,1-.171-.489.622.622,0,0,1,.2-.457.624.624,0,0,1,.448-.2.521.521,0,0,1,.451.222A24.936,24.936,0,0,1,76.984-2.1l.939-2.19q.508-1.136.978-1.955a.6.6,0,0,1,.533-.355.66.66,0,0,1,.46.184.576.576,0,0,1,.2.438A.768.768,0,0,1,80.012-5.662Zm5.516.774a.521.521,0,0,1-.489-.235,2.186,2.186,0,0,1-.165-.686q-.476.121-1.466.444-1.022.406-1.028,1a2.149,2.149,0,0,0,.375.1,6.126,6.126,0,0,1,2.171.717,2.157,2.157,0,0,1,1.035,1.93,1.7,1.7,0,0,1-.9,1.562,3.7,3.7,0,0,1-1.879.432A4.539,4.539,0,0,1,81.6.1q-.978-.355-.978-.99a.6.6,0,0,1,.2-.444.641.641,0,0,1,.454-.19.854.854,0,0,1,.508.3,1.455,1.455,0,0,0,.686.241,4.186,4.186,0,0,0,.717.076,3.154,3.154,0,0,0,.939-.127q.59-.184.59-.584,0-.863-1.206-1.168l-.66-.146a3.532,3.532,0,0,1-1.2-.432,1.217,1.217,0,0,1-.514-1.073,1.94,1.94,0,0,1,1.25-1.892A9.733,9.733,0,0,1,83.6-6.732a9.386,9.386,0,0,0,1.2-.4,1.39,1.39,0,0,1,.565-.114.6.6,0,0,1,.448.178.633.633,0,0,1,.175.463,2.707,2.707,0,0,0,.079.54,2.707,2.707,0,0,1,.079.54.633.633,0,0,1-.175.463A.6.6,0,0,1,85.528-4.888Zm6.291-.521q-.133,0-.314-.013t-.314-.013q-.146,0-.863.1l.121,3.751.006.279.006.324q.025,1.39-.667,1.39a.646.646,0,0,1-.441-.165.527.527,0,0,1-.187-.413q0-.241.019-.724t.019-.724l-.127-3.707q-.463-.019-1.409-.108a.576.576,0,0,1-.565-.628.654.654,0,0,1,.171-.463.572.572,0,0,1,.438-.184l1.333.108q0-.324-.029-.866t-.029-.784a.582.582,0,0,1,.184-.441.63.63,0,0,1,.451-.175q.571,0,.667.933.019.235.019.565L90.3-7l-.006.394q.787-.1.9-.1a3.621,3.621,0,0,1,.863.063.557.557,0,0,1,.387.6.636.636,0,0,1-.175.46A.6.6,0,0,1,91.819-5.408Zm4.843,5.7a3.585,3.585,0,0,1-2.323-.717,2.709,2.709,0,0,1-.971-2.222,4.632,4.632,0,0,1,.8-2.768,2.717,2.717,0,0,1,2.323-1.219,3.644,3.644,0,0,1,1.72.355,1.433,1.433,0,0,1,.819,1.346,1.451,1.451,0,0,1-.717,1.155,10.131,10.131,0,0,1-1.346.711L94.542-1.917a2.316,2.316,0,0,0,.885.793,2.714,2.714,0,0,0,1.235.267,3.9,3.9,0,0,0,1.028-.165,1.633,1.633,0,0,0,.965-.549q.216-.34.463-.34a.557.557,0,0,1,.4.168.526.526,0,0,1,.175.39q0,.7-1.136,1.212A4.641,4.641,0,0,1,96.662.292Zm-.171-5.783a1.627,1.627,0,0,0-1.289.6,4.046,4.046,0,0,0-.768,1.806l1.949-.927a8.368,8.368,0,0,0,1.638-.971A2.161,2.161,0,0,0,96.491-5.491ZM108.881.527a.571.571,0,0,1-.609-.552q-.114-.7-.229-1.968l-.216-1.968a4.31,4.31,0,0,0-.216-.857q-.216-.571-.47-.571a2.221,2.221,0,0,0-.876.4,3.609,3.609,0,0,0-.8.59q-.006.6.032,1.193l.19,1.695a14.376,14.376,0,0,1,.121,1.657.636.636,0,0,1-.175.46.644.644,0,0,1-.9,0,.636.636,0,0,1-.175-.46q0-.768-.156-2.269t-.156-2.269a2.35,2.35,0,0,0-.19-1.047,3.171,3.171,0,0,0-.9.66l-.749.838a3.835,3.835,0,0,1-.324.4q0,.381-.07,1.124t-.07,1.1a3.3,3.3,0,0,0,.06.533,3.251,3.251,0,0,1,.06.5.571.571,0,0,1-.194.438.65.65,0,0,1-.454.178q-.717,0-.717-1.631,0-.381.07-1.136t.07-1.136q0-.336-.06-1.009t-.06-1.016q0-1.441.647-1.441a.619.619,0,0,1,.454.216.669.669,0,0,1,.206.47,3.358,3.358,0,0,1-.032.375,3.382,3.382,0,0,0-.032.387l.013.667a3.813,3.813,0,0,1,.971-1.228,1.844,1.844,0,0,1,1.092-.549,1.371,1.371,0,0,1,1.371.99,2.263,2.263,0,0,1,.832-.7,2.521,2.521,0,0,1,1.1-.232A1.456,1.456,0,0,1,108.8-5.5a16.578,16.578,0,0,1,.26,1.784q.178,1.092.457,3.637a.512.512,0,0,1-.171.432A.654.654,0,0,1,108.881.527Z" transform="translate(188 129)" fill="#fff"/></g></svg>';
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(14, 7, 14, 7),
        margin: margin ?? EdgeInsets.only(top: 60, left: 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: SvgPicture.string(
          sbbiLogo,
          allowDrawingOutsideViewBox: true,
          height: 50,
          width: 100,
          colorBlendMode: BlendMode.clear,
        ),
      ),
    );
  }
}
