import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/list.dart';
import 'package:instagram/screens/home/likes_screen.dart';
import 'package:instagram/screens/home/message_screen.dart';
import 'package:instagram/screens/home/profile_screen.dart';
import 'package:instagram/screens/home/search_screen.dart';
import 'package:instagram/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _tanlanganRasm;
  List<Widget> _listOfWidget = [];
  int index = 0;
  Widget? searchScreen, likesScreen, profileScreen, homePage;

  @override
  void initState() {
    super.initState();
    homePage = home_page_body();
    searchScreen = search_page_body();
    likesScreen = likes_page_body();
    profileScreen = ProfileScreen();
    _listOfWidget = [
      home_page_body(),
      search_page_body(),
      likes_page_body(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _listOfWidget[index],
      bottomNavigationBar: SizedBox(
        height: getProportionateScreenWidth(50.0),
        child: Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(26.0),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: index == 0
                    ? SvgPicture.asset(
                        'assets/icons/home_active_icon.svg',
                        color: kBlackColor,
                        height: getProportionateScreenWidth(22.0),
                        width: getProportionateScreenWidth(23.5),
                      )
                    : SvgPicture.asset(
                        'assets/icons/home_icon.svg',
                        color: kBlackColor,
                        height: getProportionateScreenWidth(22.0),
                        width: getProportionateScreenWidth(23.5),
                      )),
            SizedBox(
              width: getProportionateScreenWidth(52.0),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: index == 1
                    ? SvgPicture.asset(
                        'assets/icons/search_active_icon.svg',
                        color: kBlackColor,
                        height: getProportionateScreenWidth(22.0),
                        width: getProportionateScreenWidth(23.5),
                      )
                    : SvgPicture.asset(
                        'assets/icons/search_icon.svg',
                        color: kBlackColor,
                        height: getProportionateScreenWidth(22.0),
                        width: getProportionateScreenWidth(23.5),
                      )),
            SizedBox(
              width: getProportionateScreenWidth(52.0),
            ),
            InkWell(
              onTap: _uploadImageFromGalery,
              child: SvgPicture.asset(
                'assets/icons/upload_icon.svg',
                color: kBlackColor,
                height: getProportionateScreenWidth(22.0),
                width: getProportionateScreenWidth(23.5),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(52.0),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: index == 2
                    ? SvgPicture.asset(
                        'assets/icons/love_active_icon.svg',
                        color: kBlackColor,
                        height: getProportionateScreenWidth(22.0),
                        width: getProportionateScreenWidth(23.5),
                      )
                    : SvgPicture.asset(
                        'assets/icons/love_icon.svg',
                        color: kBlackColor,
                        height: getProportionateScreenWidth(22.0),
                        width: getProportionateScreenWidth(23.5),
                      )),
            SizedBox(
              width: getProportionateScreenWidth(52.0),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: index == 3
                    ? CircleAvatar(
                        radius: getProportionateScreenWidth(13.0),
                        backgroundColor: kBlackColor,
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage("assets/images/avatarka.jpg"),
                          radius: getProportionateScreenWidth(11.0),
                        ),
                      )
                    : CircleAvatar(
                        backgroundImage:
                            const AssetImage("assets/images/avatarka.jpg"),
                        radius: getProportionateScreenWidth(11.0),
                      )),
          ],
        ),
      ),
    );
  }

  _uploadImageFromGalery() async {
    XFile? rasm = await ImagePicker().pickImage(source: ImageSource.gallery);
    
  }
}

class home_page_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Labster',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessageScreen(),
                  ),
                );
              },
              child: Image.asset(
                "assets/icons/messenger.png",
                height: getProportionateScreenWidth(22.5),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            SizedBox(
              height: getProportionateScreenWidth(90.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.red,
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight)),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: getProportionateScreenWidth(32.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: getProportionateScreenWidth(30),
                              child: CircleAvatar(
                                radius: getProportionateScreenWidth(28.0),
                                backgroundImage: const AssetImage(
                                    "assets/images/avatarka.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(Names.Usernames[index]),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(5.0)),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: .3,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: .2,
                  ),
                ),
              ),
              height: getProportionateScreenWidth(45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      backgroundImage:
                          const AssetImage("assets/images/avatarka.jpg"),
                      radius: getProportionateScreenWidth(16.0),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "samandar.2278",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Jizzakh, Uzbekistan",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(160.5)),
                    child: Icon(
                      Icons.more_vert,
                      color: kBlackColor,
                      size: getProportionateScreenWidth(26.0),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(375),
              width: getProportionateScreenWidth(375),
              child: Image.asset(
                "assets/images/avatarka.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(13.5),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(15.0),
                ),
                SvgPicture.asset(
                  'assets/icons/love_icon.svg',
                  color: kBlackColor,
                  height: getProportionateScreenWidth(22.0),
                  width: getProportionateScreenWidth(23.5),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(15.0),
                ),
                SvgPicture.asset(
                  'assets/icons/comment_icon.svg',
                  color: kBlackColor,
                  height: getProportionateScreenWidth(22.0),
                  width: getProportionateScreenWidth(23.5),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(15.0),
                ),
                SvgPicture.asset(
                  'assets/icons/message_icon.svg',
                  color: kBlackColor,
                  height: getProportionateScreenWidth(22.0),
                  width: getProportionateScreenWidth(23.5),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(57.0),
                ),
                CircleAvatar(
                  backgroundColor: kBlueColor,
                  radius: getProportionateScreenWidth(3.0),
                ),
                SizedBox(width: getProportionateScreenWidth(4.0)),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: getProportionateScreenWidth(3.0),
                ),
                SizedBox(width: getProportionateScreenWidth(4.0)),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: getProportionateScreenWidth(3.0),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(139.0),
                ),
                SvgPicture.asset(
                  'assets/icons/save_icon.svg',
                  color: kBlackColor,
                  height: getProportionateScreenWidth(22.0),
                  width: getProportionateScreenWidth(23.5),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(17.5),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(15.5),
                ),
                CircleAvatar(
                  backgroundImage:
                      const AssetImage("assets/images/avatarka.jpg"),
                  radius: getProportionateScreenWidth(12.0),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(6.5),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Liked by  ',
                    style: TextStyle(color: kBlackColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'craig_love',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: kBlackColor)),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(color: kBlackColor),
                      ),
                      TextSpan(
                          text: '44,686 others',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: kBlackColor)),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(6.0),
            ),
            RichText(
              text: const TextSpan(
                text: '',
                style: TextStyle(color: kBlackColor),
                children: <TextSpan>[
                  TextSpan(
                      text: 'joshua_I',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kBlackColor)),
                  TextSpan(
                    text:
                        ' The game in Japan was amazing and I want to\nshare some photos ',
                    style: TextStyle(color: kBlackColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
