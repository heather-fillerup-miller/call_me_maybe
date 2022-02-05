class ContactInfo {
  final String name;
  final String email;
  final String phoneNo;
  final String shortUrl;
  final String webUrl;
  final String imageFile;
  final String title;

  ContactInfo(
      {required this.name,
      required this.email,
      required this.phoneNo,
      required this.shortUrl,
      required this.webUrl,
      required this.imageFile,
      required this.title});

  String get getName => name;
  String get getEmail => email;
  String get getPhoneNo => phoneNo;
  String get getShortUrl => shortUrl;
  String get getWebUrl => webUrl;
  String get getimageFile => imageFile;
  String get getTitle => title;
}
