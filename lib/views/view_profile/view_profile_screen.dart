import 'package:booking/views/widgets/reviews_widget.dart';
import 'package:booking/views/widgets/user_info_tile_widget.dart';
import 'package:flutter/material.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 5),
                    Text(
                      'john.doe@example.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/image.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            // about me section
            AboutWidgets(),
          ],
        ),
      ),
    );
  }
}

class AboutWidgets extends StatelessWidget {
  const AboutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About Me',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        // location section
        Text(
          'Location',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('New York, USA', style: TextStyle(fontSize: 16)),
        // reviews section
        SizedBox(height: 20),
        Text(
          'Reviews',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        // List of reviews
        // with litview builder and review widget
        // it is not showing fix error
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (context, index) {
              return ReviewsWidget();
            },
          ),
        ),
      ],
    );
  }
}
