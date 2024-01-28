import 'package:flutter/material.dart';
import 'package:positionned_widget/widgets/movie_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/bg.webp"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(120)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20.6,
                                offset: Offset(0, 0),
                                color: Colors.black38)
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(120)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 60),
                      width: 200,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WATCH BEFORE EVERYONE",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 6),
                          Text("The Punisher :",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Season 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 25,
                  left: 90,
                  width: 310,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10.0,
                                  offset: Offset(0, 0),
                                  color: Colors.black12)
                            ]),
                        child:
                            const Icon(Icons.add, color: Colors.red, size: 30),
                      ),
                      Container(
                        height: 50,
                        width: 225,
                        decoration: BoxDecoration(
                            color: Colors.red[600],
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(50)),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10.0,
                                  offset: Offset(0, 0),
                                  color: Colors.black12)
                            ]),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("watch now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Icon(Icons.arrow_right_alt, color: Colors.white)
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 15, left: 50, top: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Watch now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                Text("view more", style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 50),
            width: double.infinity,
            height: 240,
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: [
                MovieItem(imagePath: "assets/blacklist.webp", movieName: "Blacklist", seasonNumber: 4),
                MovieItem(imagePath: "assets/prison-break.jpg", movieName: "Prison Break", seasonNumber: 2),
                MovieItem(imagePath: "assets/power-book.webp", movieName: "Power Book", seasonNumber: 5),
                MovieItem(imagePath: "assets/peaky-blinders.jpg", movieName: "Peaky blinders", seasonNumber: 1),
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}
/** */
/** */