// import 'dart:io';

// import 'package:component_set1/util/FontUtil.dart';
// import 'package:flutter/material.dart';
// import 'package:overlay_support/overlay_support.dart';

// class NotificationUtil {
//   static void showNotif(
//       BuildContext context, Map<String, dynamic> message, String appbar) async {
//     String title;
//     String body;

//     if (Platform.isIOS) {
//       title = "${message['aps']['alert']['title']}";
//       body = "${message['aps']['alert']['body']}";
//     } else {
//       title = "${message['notification']['title']}";
//       body = "${message['notification']['body']}";
//     }

//     if (context != null) {
//       showSimpleNotification(
//           context,
//           Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   padding: EdgeInsets.only(bottom: 5),
//                   child: Row(
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/a_logoheader.png",
//                         height: 15,
//                         width: 15,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 5),
//                         child: Text(
//                           appbar,
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 0, right: 5, top: 0),
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: FontUtil().m,
//                         fontFamily: FontUtil().primary,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 0, right: 0, top: 5, bottom: 5),
//                   child: Text(
//                     body,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: FontUtil().s,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: FontUtil().primary),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           background: Colors.white);
//     }
//   }
// }
