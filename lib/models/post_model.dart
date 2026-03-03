import 'package:booking/models/contact_model.dart';

class PostModel {
  final String name;
  final double price;
  final String description;
  final String type;
  final String address;
  final String city;
  final String country;
  final double rating;
  final ContactModel host;
  List<String> imageUrls;
  List<String> displayImageUrls;
  List<String> amenities;
  List<String> beds;
  List<String> bathrooms;

  PostModel(
    this.name,
    this.price,
    this.description,
    this.type,
    this.address,
    this.city,
    this.country,
    this.rating,
    this.host,
    this.imageUrls,
    this.displayImageUrls,
    this.amenities,
    this.beds,
    this.bathrooms,
  );

  int getNumGuest() {
    int numGuests = 0;
    for (var bed in beds) {
      if (bed.toLowerCase().contains('single')) {
        numGuests += 1;
      } else if (bed.toLowerCase().contains('double')) {
        numGuests += 2;
      } else if (bed.toLowerCase().contains('queen')) {
        numGuests += 2;
      } else if (bed.toLowerCase().contains('king')) {
        numGuests += 2;
      }
    }
    return numGuests;
  }

  void setImageUrls(List<String> urls) {
    imageUrls = urls;
    for (var url in imageUrls) {
      displayImageUrls.add(url);
    }
  }
}
