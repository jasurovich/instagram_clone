import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/size_config.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "samandar.2278",
          style: TextStyle(
            color: kBlackColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: kBlackColor,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: kBlackColor,
              ))
        ],
      ),
      body: profile_page_body(),
      
    );
  }

  

  Widget profile_page_body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatarka.jpg"),
              radius: 46,
            ),
            Column(
              children: [
                Text(
                  "9",
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(20.0),
                  ),
                ),
                Text(
                  "Posts",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15.0),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "181",
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(20.0),
                  ),
                ),
                Text(
                  "Followers",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15.0),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "120",
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(20.0),
                  ),
                ),
                Text(
                  "Following",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15.0),
                  ),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Samandar Abduhamitov",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15.0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: getProportionateScreenWidth(35.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              width: getProportionateScreenWidth(110.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, elevation: 0),
                onPressed: () {},
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              height: getProportionateScreenWidth(35.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              width: getProportionateScreenWidth(110.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, elevation: 0),
                onPressed: () {},
                child: const Text(
                  "Ad Tools",
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              height: getProportionateScreenWidth(35.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              width: getProportionateScreenWidth(110.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, elevation: 0),
                onPressed: () {},
                child: const Text(
                  "Insights",
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10.0),
          child: Text(
            "Story Highlights",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15.0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(10.0),
        ),
        TabBar(
          indicatorColor: Colors.black,
          controller: _tabController,
          labelColor: Colors.black,
          labelStyle:
              const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey,
          isScrollable: false,
          tabs: const [
            Tab(
              child: Icon(Icons.grid_on),
            ),
            Tab(
              child: Icon(Icons.play_arrow_outlined),
            ),
            Tab(
              child: Icon(Icons.person),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return chatView(context, index);
                },
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                ),
              ),
              Container(),
              Container(),
            ],
          ),
        )
      ],
    );
  }

  Widget chatView(BuildContext context, int index) {
    return Image.network(
      "https://source.unsplash.com/random/$index",
      fit: BoxFit.cover,
    );
  }
}
