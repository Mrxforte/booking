import 'package:flutter/material.dart';

class ViewPostScreen extends StatelessWidget {
  const ViewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Post'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.save))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopImageCarouselWidget(),
            SizedBox(height: 20),
            BookNowWidget(),
            // Description in row and user avater beleove name
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About this place",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "This is the description of the post. It can be a long text that describes the details of the post, such as the location, amenities, and other relevant information that potential customers might find useful.",
                          textAlign: TextAlign.justify,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue.shade400,
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Azamat Urozimbetov",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Host",
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookNowWidget extends StatelessWidget {
  const BookNowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              "Appartment - NewYork",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "wesome Appartment",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Book Now"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Text(
              "Night - 120\$",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}

class TopImageCarouselWidget extends StatelessWidget {
  const TopImageCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Image(
            image: AssetImage("assets/images/image.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,

            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
