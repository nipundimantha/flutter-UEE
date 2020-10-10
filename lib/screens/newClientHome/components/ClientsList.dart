// import 'package:flutter/material.dart';

// import '../../../size_config.dart';

// class ClientsList extends StatelessWidget {
//   const ClientsList({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: const <Widget>[
//         Card(child: ListTile(title: Text('One-line ListTile'))),
//         Card(
//           child: ListTile(
//             leading: FlutterLogo(),
//             title: Text('One-line with leading widget'),
//           ),
//         ),
//         Card(
//           child: ListTile(
//             title: Text('One-line with trailing widget'),
//             trailing: Icon(Icons.more_vert),
//           ),
//         ),
//         Card(
//           child: ListTile(
//             leading: FlutterLogo(),
//             title: Text('One-line with both widgets'),
//             trailing: Icon(Icons.more_vert),
//           ),
//         ),
//         Card(
//           child: ListTile(
//             title: Text('One-line dense ListTile'),
//             dense: true,
//           ),
//         ),
//         Card(
//           child: ListTile(
//             leading: FlutterLogo(size: 56.0),
//             title: Text('Two-line ListTile'),
//             subtitle: Text('Here is a second line'),
//             trailing: Icon(Icons.more_vert),
//           ),
//         ),
//         Card(
//           child: ListTile(
//             leading: FlutterLogo(size: 72.0),
//             title: Text('Three-line ListTile'),
//             subtitle:
//                 Text('A sufficiently long subtitle warrants three lines.'),
//             trailing: Icon(Icons.more_vert),
//             isThreeLine: true,
//           ),
//         ),
//       ],
//     );
//   }
// }

///
///
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ClientsList extends StatelessWidget {
  const ClientsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(10)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(10),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFEEAE6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Color(0xFFFF7643)),
          children: [
            TextSpan(
              text: "Tiny Anderson",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(text: "\n"),
            TextSpan(
              text: "tinyekanayake@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(12),
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(text: "\n"),
            TextSpan(
              text: "B400258958P",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(12),
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
