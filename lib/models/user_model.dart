import 'package:booking/models/contact_model.dart';

class UserModel extends ContactModel {
  final String email;
  final String bio;
  final String city;
  final String country;
  bool isHost;
  bool isHostingNow;

  UserModel({
    required String firstName,
    required String lastName,
    required String fullName,
    required String imgUrl,
    required String displayImageUrl,
    required this.email,
    required this.bio,
    required this.city,
    required this.country,
    required this.isHost,
    required this.isHostingNow,
  }) : super(
         firstName: firstName,
         lastName: lastName,
         fullName: fullName,
         imgUrl: imgUrl,
         displayImageUrl: displayImageUrl,
       );

  void changeHostingStatus(bool isHosting) {
    isHostingNow = isHosting;
  }

  void becomeHost() {
    isHost = true;
    isHostingNow = true;
  }
}
