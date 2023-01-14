abstract class AppAssets {
  static const splashPattern = 'assets/images/splash_pattern.png';

  static const map = 'assets/images/map.svg';
  static const vk = 'assets/images/vk.svg';
  static const youtube = 'assets/images/youtube.svg';

  static const customerAndNumbers = 'assets/images/customer_and_numbers.svg';

  static const dogAndPizzaBox = 'assets/images/dog_and_pizza_box.svg';

  static const countries = 'assets/countries/countries.json';
  static String countryCities(int countryCode) => 'assets/countries/country_$countryCode.json';
}
