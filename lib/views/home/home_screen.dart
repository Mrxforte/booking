import 'package:booking/views/widgets/custom_searchbar_widget.dart';
import 'package:booking/views/widgets/post_tile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Column(
        children: [
          // searchbar
          CustomSearchBarWidget(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 240,
                ),

                itemCount: 10,
                itemBuilder: (context, index) {
                  return PostTileWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
