import 'package:flutter/services.dart';
import 'package:retron/models/onboard_model.dart';
import 'package:retron/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:retron/shared/constant.dart';
import 'package:flutter/material.dart';


class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/images/Onboard 1.png',
      text: 'Instantly Buy, Sell and swap crypto assets.',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At blandit at velit semper. Ut.',
    ),
    OnboardModel(
      img: 'assets/images/onboard 2.png',
      text: 'Access crypto loan with any digital assets.',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.',
    ),
    OnboardModel(
      img: 'assets/images/Onboard 3.png',
      text: 'Earn rewards on your every crypto journey.',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.',
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    //print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    //print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: screens.length,
            controller: _pageController,
            //physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(screens[index].img),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        screens[index].text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          fontFamily: 'Mabry-Pro',
                          color: index % 2 == 0 ? textColor100 : textColor100,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        screens[index].desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          height: 1.7,
                          fontFamily: 'Mabry-Pro',
                          color: index % 2 == 0 ? textColor100 : textColor100,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 10.0,
                      child: ListView.builder(
                        itemCount: screens.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3.0),
                                  width: currentIndex == index ? 25 : 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: currentIndex == index
                                        ? textColor100
                                        : textColor10,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ]);
                        },
                      ),
                    ),
                    const SizedBox(height: 65),
                    InkWell(
                      onTap: () async {
                        //print(index);
                        if (index == screens.length - 1) {
                          await _storeOnboardInfo();
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  // ignore: prefer_const_constructors
                                  builder: (context) => Login()));
                        }
        
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.decelerate,
                        );
                      },
                      child: Container(
                        height: 55,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [gradient1, gradient2, gradient3, gradient4]
                              ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120.0, ),
                        child: Row(mainAxisSize: MainAxisSize.min, children: const [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: background,
                          ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
