import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchFieldClients extends StatelessWidget {
  const SearchFieldClients({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.9,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Clients",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
