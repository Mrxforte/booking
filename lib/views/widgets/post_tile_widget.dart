import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

class PostTileWidget extends StatelessWidget {
  const PostTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade700),
            ),
            child: SizedBox(
              child: Image(
                image: AssetImage("assets/images/image.png"),
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText("Appartment - NewYork"),
          AutoSizeText("Awesome Appartment"),
          AutoSizeText("Night - 120\$"),
          StarRating(color: Colors.yellow, rating: 5, length: 5),
        ],
      ),
    );
  }
}
