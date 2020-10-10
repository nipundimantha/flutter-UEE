// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/pro_settings/program_settings.dart';

// import 'package:flutter/material.dart';

// import '../../../size_config.dart';

// //void main() => runApp(MyApp());

// /// This is the main application widget.
// class MyApp extends StatelessWidget {
//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: MyStatelessWidget(),
//       ),
//     );
//   }
// }

// /// This is the stateless widget that the main application instantiates.
// class MyStatelessWidget extends StatelessWidget {
//   MyStatelessWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Card(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             ListTile(
//               leading: Image.asset(
//                 'assets/images/1.jpg',
//                 package: 'assets',
//               ),
//               title: Text('The Enchanted Nightingale'),
//               subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 // DefaultButton(
//                 //   text: "Go",
//                 //   press: () {
//                 //     Navigator.pushNamed(
//                 //         context, CompleteProfileScreen.routeNamae);
//                 //   },
//                 // ),
//                 // TextButton(
//                 //   child: const Text('BUY TICKETS'),
//                 //   onPressed: () {/* ... */},
//                 // ),
//                 // const SizedBox(width: 8),
//                 // TextButton(
//                 //   child: const Text('LISTEN'),
//                 //   onPressed: () {/* ... */},
//                 // ),
//                 const SizedBox(width: 8),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // class Categories extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     List<Map<String, dynamic>> categories = [
// //       {"icon": "assets/images/1.svg", "text": "User Operations"},
// //       // {"icon": "assets/images/settings.svg", "text": "Program Settings"},
// //     ];

// //     return Padding(
// //       padding: EdgeInsets.all(getProportionateScreenWidth(20)),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: List.generate(
// //           categories.length,
// //           (index) => CategoryCard(
// //             icon: categories[index]["icon"],
// //             text: categories[index]["text"],
// //             press: () {
// //               Navigator.pushNamed(context, ProSettings.routeName);
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class CategoryCard extends StatelessWidget {
// //   const CategoryCard({
// //     Key key,
// //     @required this.icon,
// //     @required this.text,
// //     @required this.press,
// //   }) : super(key: key);

// //   final String icon, text;
// //   final GestureTapCallback press;

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: press,
// //       child: SizedBox(
// //         width: getProportionateScreenWidth(290),
// //         child: Column(
// //           children: [
// //             Container(
// //               padding: EdgeInsets.all(getProportionateScreenWidth(40)),
// //               height: getProportionateScreenWidth(155),
// //               width: getProportionateScreenWidth(380),
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(10),
// //                 border: Border.all(color: Colors.deepOrange, width: 2),
// //               ),
// //               child: SvgPicture.asset(icon),
// //             ),
// //             Text(
// //               "Copyright@Rent4U | AllRightsReserved2020",
// //               textAlign: TextAlign.center,
// //               style: Theme.of(context).textTheme.caption,
// //             ),
// //             SizedBox(height: 20),
// //             Text(text, textAlign: TextAlign.center)
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
