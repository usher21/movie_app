import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String imagePath;
  final String movieName;
  final int seasonNumber;

  const MovieItem(
      {super.key,
      required this.imagePath,
      required this.movieName,
      required this.seasonNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.32,
      margin: const EdgeInsets.only(right: 25),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                blurRadius: 10.0, offset: Offset(0, 0), color: Colors.black12)
          ]),
      height: 200,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover)),
          ),
          Text(movieName,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text("Season $seasonNumber",
              style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }
}
