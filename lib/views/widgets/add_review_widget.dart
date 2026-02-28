import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

class AddReviewWidget extends StatelessWidget {
  const AddReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          // text title
          SizedBox(height: 10),
          Text("Leave your reviews..."),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(minLines: 1, maxLines: 5),
          ),
          SizedBox(height: 10),
          StarRating(
            color: Colors.yellow,
            length: 5,
            rating: 3,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("Sumbmit")),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
