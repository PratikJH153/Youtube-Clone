import 'package:flutter/material.dart';
import 'package:youtubeclone/widgets/constants.dart';
import 'package:youtubeclone/widgets/filter_option.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  final List<String> _options = const [
    "All",
    "Chess",
    "Flutter",
    "Computer Programming",
    "Python",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 150,
                    child: Image.asset(
                      "assets/icons/logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Spacer(),
                  const IconButton(
                    icon: Icon(Icons.live_tv_rounded),
                    disabledColor: kPrimaryColor,
                    onPressed: null,
                  ),
                  const IconButton(
                    icon: Icon(Icons.notification_add_outlined),
                    disabledColor: kPrimaryColor,
                    onPressed: null,
                  ),
                  const IconButton(
                    icon: Icon(Icons.search_rounded),
                    disabledColor: kPrimaryColor,
                    onPressed: null,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            "https://lh3.googleusercontent.com/a-/AOh14GiyFp5KeiMciSObS6SoUNW_mEckHTNa-ex27yjQtQ=s240-c"),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 13),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: _options.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    if (index == 0) {
                      return Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: kInActiveColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.explore_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Explore"),
                              ],
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 2,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            color: kInActiveColor,
                          ),
                        ],
                      );
                    }
                    return FilterOption(
                      title: _options[index - 1],
                      isActive: _options[index - 1] == "All",
                    );
                  },
                ),
              ),
            ],
          ),
          preferredSize: const Size.fromHeight(150.0),
        ),
        body: ListView.builder(
          itemCount: 2,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (ctx, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          "https://i.ytimg.com/vi/IOyq-eTRhvo/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBTZ0ySwm4DJpAVdknt19CPQ2ocjA",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kBackgroundColor,
                          ),
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            "10:48",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                                "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s176-c-k-c0x00ffffff-no-rj-mo"),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Widgets vs helper methods | Decoding Flutter",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Flutter . 26K views . 7 days ago",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: kSubTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            backgroundColor: kBackgroundColor,
            elevation: 5,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(
              color: kPrimaryColor,
            ),
            unselectedLabelStyle: const TextStyle(
              color: kPrimaryColor,
            ),
            items: [
              const BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 3.0),
                  child: Icon(
                    Icons.home_filled,
                    color: kPrimaryColor,
                    size: 28,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    "assets/icons/shorts.png",
                    height: 28,
                    width: 28,
                    color: Colors.white,
                  ),
                ),
                label: "Shorts",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/add.png",
                  height: 42,
                  width: 42,
                  color: Colors.white,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    "assets/icons/subscription.png",
                    height: 28,
                    width: 28,
                    color: Colors.white,
                  ),
                ),
                label: "Subscriptions",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    "assets/icons/library.png",
                    height: 28,
                    width: 28,
                    color: Colors.white,
                  ),
                ),
                label: "Library",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
