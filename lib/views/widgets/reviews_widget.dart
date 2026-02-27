import 'dart:math';

import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Azamat Urozimbetov'),
          StarRating(
            rating: Random().nextInt(5) + 1.0,
            color: Colors.amber,
            length: 5,
          ),
        ],
      ),
      subtitle: Text('This is the Reviews widget'),
    );
  }
}
