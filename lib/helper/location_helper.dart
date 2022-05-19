const GOOGLE_API_KEY = 'AIzaSyCAWHvvF-VwBSSk2CTwftBr9p9uGIhdM24';

class LocationHelper {
  static String generateLocationPreviewImage(
      {required double latitude, required double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY'; //&signature=YOUR_SIGNATURE
  }
}
