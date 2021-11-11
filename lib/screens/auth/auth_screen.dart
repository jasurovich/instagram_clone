import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/screens/auth/auth_login_screen.dart';
import 'package:instagram/size_config.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            textAlign: TextAlign.center,
          ),
          // BODY SECTION
          SizedBox(height: getProportionateScreenHeight(47.0)),
          Column(
            children: [
              Container(
                width: getProportionateScreenWidth(85),
                height: getProportionateScreenWidth(85.0),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/avatarka.jpg'),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),
                ),
              ),
              const SizedBox(height: 13.0),
              Text(
                "samandar.2278",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(17.0)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(32.0)),
            child: OutlinedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AuthLoginScreen(),
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
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Switch Account",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14.0),
                fontWeight: FontWeight.w600,
                color: kBlueColor,
              ),
            ),
            style: TextButton.styleFrom(
              elevation: 0.0,
              shadowColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
          ),
          const Spacer(),
          // FOOTER SECTION
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
          ),
        ],
      ),
    );
  }
}
