import 'package:auto_size_text/auto_size_text.dart';
import 'package:booking/views/widgets/upcoming_trips_widget.dart';
import 'package:flutter/material.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran o'lchamlarini olish uchun MediaQuery'ni bir marta o'zgaruvchiga olamiz
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('Hotels'), centerTitle: true),
      body: Column(
        children: [
          // 1. Yuqori qism: Upcoming Trips
          Container(
            width: double.infinity, // Ekran kengligini to'liq egallaydi
            height:
                size.height * 0.4, // /2 o'rniga *0.4 (ko'proq moslashuvchan)
            padding: const EdgeInsets.fromLTRB(
              16,
              16,
              0,
              16,
            ), // O'ng tomondan paddingni olib tashladik (scroll chiroyli ko'rinishi uchun)
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Align o'rniga shundan foydalanamiz
              children: [
                const AutoSizeText(
                  "Upcoming Trips",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  minFontSize: 26,
                ),
                const SizedBox(
                  height: 12,
                ), // Sarlavha va ro'yxat orasida masofa
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    // BouncingScrollPhysics ko'proq "premium" his beradi
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      // Har bir element orasida masofa qoldirish uchun Padding qo'shdik
                      return const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: UpcomingTripsWidget(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // 2. Pastki qism: Ko'k rangli asosiy kontent
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: const Center(
                child: Text(
                  "Boshqa kontentlar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
