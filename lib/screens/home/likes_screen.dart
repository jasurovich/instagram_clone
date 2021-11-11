import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/size_config.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: likes_page_body(),
    );
  }
}

class likes_page_body extends StatelessWidget {
  const likes_page_body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Activity",
          style: TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(25.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: kBlackColor,
                radius: getProportionateScreenWidth(26.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.stacked_line_chart_rounded,
                    color: kBlackColor,
                    size: getProportionateScreenWidth(30.0),
                  ),
                  radius: getProportionateScreenWidth(25.0),
                  backgroundColor: Colors.white,
                ),
              ),
              title: const Text(
                "Promotions",
                style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Recent activity from your promotions.",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: getProportionateScreenWidth(15.0)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: .2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15.0),
                top: getProportionateScreenWidth(5.0),
              ),
              child: Text(
                "Stories About You",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18.0),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10.0)),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: getProportionateScreenWidth(32.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: getProportionateScreenWidth(30),
                  child: CircleAvatar(
                    radius: getProportionateScreenWidth(28.0),
                    backgroundImage:
                        const AssetImage("assets/images/avatarka.jpg"),
                  ),
                ),
              ),
              title: const Text(
                "Mentions",
                style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "1 story mentions you",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: getProportionateScreenWidth(15.0)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15.0),
                top: getProportionateScreenWidth(20.0),
              ),
              child: Text(
                "Today",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18.0),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(14.0),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: getProportionateScreenWidth(32.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: getProportionateScreenWidth(30),
                  child: CircleAvatar(
                    radius: getProportionateScreenWidth(28.0),
                    backgroundImage: const NetworkImage(
                      "https://source.unsplash.com/random/1",
                    ),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  text: '',
                  style: const TextStyle(color: kBlackColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'bahriddinova_2407',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                            fontSize: getProportionateScreenWidth(15.0))),
                    TextSpan(
                      text: ' shared your response to their question sticker. ',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: getProportionateScreenWidth(15.0)),
                    ),
                  ],
                ),
              ),
              trailing: Image.network(
                "https://source.unsplash.com/random/9",
                width: getProportionateScreenWidth(60.0),
                height: getProportionateScreenWidth(60.0),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(14.0),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: getProportionateScreenWidth(32.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: getProportionateScreenWidth(30),
                  child: CircleAvatar(
                    radius: getProportionateScreenWidth(28.0),
                    backgroundImage: const NetworkImage(
                      "https://source.unsplash.com/random/14",
                    ),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  text: '',
                  style: const TextStyle(color: kBlackColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: 's_sheyxa, islomjon_qoldashev and 25 others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                            fontSize: getProportionateScreenWidth(15.0))),
                    TextSpan(
                      text: ' liked your video. ',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: getProportionateScreenWidth(15.0)),
                    ),
                  ],
                ),
              ),
              trailing: Image.network(
                "https://source.unsplash.com/random/3",
                width: getProportionateScreenWidth(60.0),
                height: getProportionateScreenWidth(60.0),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(14.0),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: getProportionateScreenWidth(32.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: getProportionateScreenWidth(30),
                  child: CircleAvatar(
                    radius: getProportionateScreenWidth(28.0),
                    backgroundImage: const NetworkImage(
                      "https://source.unsplash.com/random/16",
                    ),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  text: '',
                  style: const TextStyle(color: kBlackColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: 's_sheyxa, izabella_1.8 and 10 others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                            fontSize: getProportionateScreenWidth(15.0))),
                    TextSpan(
                      text: ' started following you ',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: getProportionateScreenWidth(15.0)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(14.0),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: getProportionateScreenWidth(32.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: getProportionateScreenWidth(30),
                  child: CircleAvatar(
                    radius: getProportionateScreenWidth(28.0),
                    backgroundImage: const NetworkImage(
                      "https://source.unsplash.com/random/1",
                    ),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  text: '',
                  style: const TextStyle(color: kBlackColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'ibrohim_sobirov277',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                            fontSize: getProportionateScreenWidth(15.0))),
                    TextSpan(
                      text: ' mentioned you in a comment: ',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: getProportionateScreenWidth(15.0)),
                    ),
                    TextSpan(
                      text:
                          ' @javohir_shokarimov @ilhamovich_04 @samandar.2278 ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: getProportionateScreenWidth(12.0)),
                    ),
                  ],
                ),
              ),
              trailing: Image.network(
                "https://source.unsplash.com/random/98",
                width: getProportionateScreenWidth(60.0),
                height: getProportionateScreenWidth(60.0),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(
                80.0,
              )),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.grey,
                      size: getProportionateScreenWidth(15.0),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5.0),
                  ),
                  Text(
                    "Reply",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(12.0),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(10.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "This Week",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: getProportionateScreenWidth(18.0),
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
