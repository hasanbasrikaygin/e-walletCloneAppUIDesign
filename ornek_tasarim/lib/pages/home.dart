import 'package:flutter/material.dart';
import 'package:ornek_tasarim/animation/fade_animation.dart';
import 'package:ornek_tasarim/widget/bottom_navigation_bar.dart';
import 'package:ornek_tasarim/widget/history_wallet.dart';
import 'package:ornek_tasarim/widget/icon_widget.dart';

import '../widget/swiper_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:const Color(0xFF181B2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181B2A),
        elevation: 0,
        actions: [
          FadeAnimation(
            delay: 1,
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "VBT Intern",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 200, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF272A3F),
                  ),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            child: Column(
              children: [
                SwipperCard(),
                // SEND - PAY - WIRDTH DRAW - BILL - VOUCHER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconWidget(
                      title: "Send",
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Colors.blue,
                        ),
                      ),
                      delayAnimation: 1.5,
                      color: const Color(0xFF17334E),
                    ),
                    // SizedBox(width: we * 0.03,),
                    IconWidget(
                      title: "Pay",
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.payments,
                          color: Colors.red,
                        ),
                      ),
                      delayAnimation: 1.7,
                      color: const Color(0xFF411C2E),
                    ),
                    IconWidget(
                      title: "Width Draw",
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-cash-withdrawal-96.png",
                          width: we * 0.08,
                          height: he * 0.08,
                          color: Colors.green,
                        ),
                      ),
                      delayAnimation: 1.9,
                      color: const Color(0xFF163333),
                    ),
                    IconWidget(
                      title: "Bill",
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.receipt,
                          color: Colors.purple,
                        ),
                      ),
                      delayAnimation: 2.1,
                      color: const Color(0xFF32204D),
                    ),

                    IconWidget(
                      title: "Voucher",
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-voucher-96.png",
                          width: we * 0.08,
                          height: he * 0.08,
                          color: Colors.orange,
                        ),
                      ),
                      color: const Color(0xFF412D27),
                      delayAnimation: 2.1,
                    ),
                  ],
                ),
                SizedBox(
                  height: he * 0.03,
                ),
                //History Wallet
                // SPOTIFY - PINTEREST
                const HistoryWallet(
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/1982px-Spotify_icon.svg.png",
                  title: "Spotify Subscription",
                  day: "21Jun 2021",
                  isPositive: false,
                  money: "11.90",
                  time: "12:01 am",
                ),
                SizedBox(
                  height: he * 0.03,
                ),
                const HistoryWallet(
                    image:
                        "https://seeklogo.com/images/P/pinterest-logo-CA98998DCB-seeklogo.com.png",
                    title: "Pinterest Salary",
                    day: "20Jun 2021",
                    isPositive: true,
                    money: "63.0",
                    time: "09:0 pm"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
