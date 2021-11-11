import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/list.dart';
import 'package:instagram/size_config.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
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
        iconTheme: const IconThemeData(color: kBlackColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: const Text(
          "samandar.2278",
          style: TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        actions: [
          SvgPicture.asset(
            'assets/icons/camera_icon.svg',
            color: kBlackColor,
            height: getProportionateScreenWidth(22.0),
            width: getProportionateScreenWidth(23.5),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mode_edit_outline_outlined,
                color: kBlackColor,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                fillColor: const Color(0xffefefef),
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: getProportionateScreenWidth(18.0),
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
                child: Text("Primary"),
              ),
              Tab(
                child: Text("General"),
              ),
              Tab(
                child: Text("0 Request"),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return chatView(context, index);
                  },
                  itemCount: 8,
                ),
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget chatView(BuildContext context, int index) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.red,
            ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: getProportionateScreenWidth(32.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: getProportionateScreenWidth(30),
            child: CircleAvatar(
              radius: getProportionateScreenWidth(28.0),
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/random/$index"),
            ),
          ),
        ),
      ),
      title: Text(
        Names.Usernames[index + 1],
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
      subtitle: const Text(
        "Active 1h ago",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: SvgPicture.asset(
        'assets/icons/camera_icon.svg',
        color: Colors.grey,
        height: getProportionateScreenWidth(22.0),
        width: getProportionateScreenWidth(23.5),
      ),
    );
  }
}
