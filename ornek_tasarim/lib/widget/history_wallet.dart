import 'package:flutter/material.dart';
import 'package:ornek_tasarim/animation/fade_animation.dart';
class HistoryWallet extends StatelessWidget {
  final String title;
  final String image;
  final String day;
  final String time;
  final String money;
  final bool isPositive;
  const HistoryWallet(
      {Key? key,
      required this.title,
      required this.image,
      required this.day,
      required this.time,
      required this.money,
      required this.isPositive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return FadeAnimation(
      delay: 2,
      child: Container(
        height: he * 0.085,
        width: we * 0.9,
        //margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFF282A40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(
              width: we * 0.035,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      day,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: we * 0.16,
            ),
            Text(
              isPositive ? "+" : "-",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "images/us-dollar.png",
              width: we * 0.035,
              height: he * 0.035,
              color: Colors.white,
            ),
            Text(
              money,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
