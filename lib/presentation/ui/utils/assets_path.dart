class AssetsPath{
  static const String _basePath='assets';
  static const String _images = '$_basePath/images';
  static const String _banners = '$_images/banner';
  static const String _avatars = '$_images/avatars';
  static const String _icons = '$_basePath/icons';
  static const String _logos = '$_basePath/logos';

  static const String appLogoSVG='$_logos/logo.svg';

  static const String googleLogo='$_icons/google.png';
  static const String facebookLogo='$_icons/facebook.png';
  static const String twitterLogo='$_icons/twitter.png';
  static const String defaultAvatar='$_avatars/anya_avatar.jpg';



  static const List<Map<String, String>> bannerData = [
    {
      "image": '$_banners/naruto.jpg',
      "video": 'https://youtu.be/tA3yE4_t6SY?si=2-yPNggBVF5V863f',
    },
    {
      "image": '$_banners/demon_slayer.jpg',
      "video": 'https://youtu.be/rDDxPpzXFhM?si=uSqTTaBqICpKNzaU',
    },
    {
      "image": '$_banners/spy-x-family.jpg',
      "video": 'https://youtu.be/CCXLUQzuigw?si=6RwVPJNQc7Thi2CT',
    },
    {
      "image": '$_banners/one_piece.jpg',
      "video": 'https://youtu.be/S8_YwFLCh4U?si=eAzmCGyqnxuBaCdX',
    },
    {
      "image": '$_banners/jjk.jpg',
      "video": 'https://youtu.be/Pm-wNmS9RGI?si=BnjhoDnH0pJ22eQk',
    },
  ];
  static const String DemonSlayerTrainer='https://youtu.be/rDDxPpzXFhM?si=uSqTTaBqICpKNzaU';

  static const List<String> imageList = [
    '$_images/your_name.jpg',
    '$_images/jjk.jpg',
    '$_images/demon_slayer.jpg',
    '$_images/naruto_prime.jpg',
    '$_images/naruto_shippuden.jpg',
    '$_images/one_piece.jpg',
    '$_images/your_name.jpg',
    '$_images/jjk.jpg',
    '$_images/demon_slayer.jpg',
    '$_images/naruto_prime.jpg',
    '$_images/naruto_shippuden.jpg',
    '$_images/one_piece.jpg',
  ];

}