import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/size_config.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: search_page_body(),
     
    );
  }
}

class search_page_body extends StatelessWidget {
  const search_page_body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: kBlackColor),
                fillColor: const Color(0xffefefef),
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: getProportionateScreenWidth(14.0),
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                constraints: const BoxConstraints(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15.0),
                  vertical: getProportionateScreenHeight(13.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
