import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/screens/home/home_screen.dart';
import 'package:instagram/size_config.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            size: getProportionateScreenWidth(18.0),
            color: kBlackColor,
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
        ),
        leadingWidth: 35,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // LOGO SECTION
          const Spacer(),
          Text(
            "Instagram",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(49.0),
              color: kBlackColor,
              fontFamily: 'Labster',
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(39.0)),
          // FORM SECTION
          Form(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFFAFAFA),
                      filled: true,
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(14.0),
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      constraints: const BoxConstraints(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0),
                        vertical: getProportionateScreenHeight(13.5),
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(12.0)),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFFAFAFA),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(14.0),
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      constraints: const BoxConstraints(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0),
                        vertical: getProportionateScreenHeight(13.5),
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(19.0)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password ?",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w500,
                          color: kBlueColor,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30.0)),
                  OutlinedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14.0),
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: kBlueColor,
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(14.0),
                        horizontal: getProportionateScreenWidth(133.0),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(37.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.facebook, color: kBlueColor),
              SizedBox(width: getProportionateScreenWidth(10.0)),
              Text(
                "Log in with Facebook",
                style: TextStyle(
                  color: kBlueColor,
                  fontSize: getProportionateScreenWidth(14.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(41.0)),
          Row(
            children: [
              Expanded(
                  child: Divider(
                      indent: getProportionateScreenWidth(16.0),
                      color: Colors.black.withOpacity(0.2),
                      thickness: 1.5)),
              SizedBox(width: getProportionateScreenWidth(30.5)),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12.0),
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(30.5)),
              Expanded(
                  child: Divider(
                      endIndent: getProportionateScreenWidth(16.0),
                      color: Colors.black.withOpacity(0.2),
                      thickness: 1.5)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(49.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have account ?",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12.0),
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12.0),
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
            ],
          ),

          const Spacer(),
          Divider(
            color: kBlackColor.withOpacity(0.2),
            thickness: 1.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(18.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Instragram from META",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12.0),
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
