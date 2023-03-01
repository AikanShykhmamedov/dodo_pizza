// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `{category, select, pizza {Pizza} combo {Combo} snacks {Snacks} desserts {Desserts} drinks {Drinks} sauces {Sauces} goods {Goods} other {}}`
  String menu_category_name(Object category) {
    return Intl.select(
      category,
      {
        'pizza': 'Pizza',
        'combo': 'Combo',
        'snacks': 'Snacks',
        'desserts': 'Desserts',
        'drinks': 'Drinks',
        'sauces': 'Sauces',
        'goods': 'Goods',
        'other': '',
      },
      name: 'menu_category_name',
      desc: '',
      args: [category],
    );
  }

  /// `from £{value}`
  String menu_price_from_count(Object value) {
    return Intl.message(
      'from £$value',
      name: 'menu_price_from_count',
      desc: '',
      args: [value],
    );
  }

  /// `Add to basket`
  String get menu_offer_add_basket {
    return Intl.message(
      'Add to basket',
      name: 'menu_offer_add_basket',
      desc: '',
      args: [],
    );
  }

  /// `Add to basket for £{value}`
  String menu_offer_add_basket_for_count(Object value) {
    return Intl.message(
      'Add to basket for £$value',
      name: 'menu_offer_add_basket_for_count',
      desc: '',
      args: [value],
    );
  }

  /// `Add to taste`
  String get menu_offer_add_taste {
    return Intl.message(
      'Add to taste',
      name: 'menu_offer_add_taste',
      desc: '',
      args: [],
    );
  }

  /// `{value} g`
  String menu_offer_weight_count(Object value) {
    return Intl.message(
      '$value g',
      name: 'menu_offer_weight_count',
      desc: '',
      args: [value],
    );
  }

  /// `{value} l`
  String menu_offer_volume_count(Object value) {
    return Intl.message(
      '$value l',
      name: 'menu_offer_volume_count',
      desc: '',
      args: [value],
    );
  }

  /// `{value} pcs.`
  String menu_offer_piece_count(Object value) {
    return Intl.message(
      '$value pcs.',
      name: 'menu_offer_piece_count',
      desc: '',
      args: [value],
    );
  }

  /// `{diameter, select, small {Small} medium {Medium} large {Large} other {}}`
  String menu_offer_diameter_name(Object diameter) {
    return Intl.select(
      diameter,
      {
        'small': 'Small',
        'medium': 'Medium',
        'large': 'Large',
        'other': '',
      },
      name: 'menu_offer_diameter_name',
      desc: '',
      args: [diameter],
    );
  }

  /// `{diameter, select, small {Small} medium {Medium} large {Large} other {}}`
  String menu_offer_diameter_full_name(Object diameter) {
    return Intl.select(
      diameter,
      {
        'small': 'Small',
        'medium': 'Medium',
        'large': 'Large',
        'other': '',
      },
      name: 'menu_offer_diameter_full_name',
      desc: '',
      args: [diameter],
    );
  }

  /// `{dough, select, original {Original} thin {Thin} other {}}`
  String menu_offer_dough_name(Object dough) {
    return Intl.select(
      dough,
      {
        'original': 'Original',
        'thin': 'Thin',
        'other': '',
      },
      name: 'menu_offer_dough_name',
      desc: '',
      args: [dough],
    );
  }

  /// `{dough, select, original {Original crust} thin {Thin crust} other {}}`
  String menu_offer_dough_full_name(Object dough) {
    return Intl.select(
      dough,
      {
        'original': 'Original crust',
        'thin': 'Thin crust',
        'other': '',
      },
      name: 'menu_offer_dough_full_name',
      desc: '',
      args: [dough],
    );
  }

  /// `Remove ingredients`
  String get menu_offer_remove_ingredients {
    return Intl.message(
      'Remove ingredients',
      name: 'menu_offer_remove_ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get menu_offer_remove_ingredients_dialog_reset {
    return Intl.message(
      'Reset',
      name: 'menu_offer_remove_ingredients_dialog_reset',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get menu_offer_remove_ingredients_dialog_done {
    return Intl.message(
      'Done',
      name: 'menu_offer_remove_ingredients_dialog_done',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get menu_offer_combo_slot_change {
    return Intl.message(
      'Change',
      name: 'menu_offer_combo_slot_change',
      desc: '',
      args: [],
    );
  }

  /// `Nutrition facts (per 100 g)`
  String get menu_food_value_nutrition_facts {
    return Intl.message(
      'Nutrition facts (per 100 g)',
      name: 'menu_food_value_nutrition_facts',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get menu_food_value_calories {
    return Intl.message(
      'Calories',
      name: 'menu_food_value_calories',
      desc: '',
      args: [],
    );
  }

  /// `Proteins`
  String get menu_food_value_proteins {
    return Intl.message(
      'Proteins',
      name: 'menu_food_value_proteins',
      desc: '',
      args: [],
    );
  }

  /// `Fats`
  String get menu_food_value_fats {
    return Intl.message(
      'Fats',
      name: 'menu_food_value_fats',
      desc: '',
      args: [],
    );
  }

  /// `Carbohydrates`
  String get menu_food_value_carbohydrates {
    return Intl.message(
      'Carbohydrates',
      name: 'menu_food_value_carbohydrates',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get menu_food_value_weight {
    return Intl.message(
      'Weight',
      name: 'menu_food_value_weight',
      desc: '',
      args: [],
    );
  }

  /// `{value} kcal`
  String menu_food_value_kcal_value(Object value) {
    return Intl.message(
      '$value kcal',
      name: 'menu_food_value_kcal_value',
      desc: '',
      args: [value],
    );
  }

  /// `{value} g`
  String menu_food_value_grams_value(Object value) {
    return Intl.message(
      '$value g',
      name: 'menu_food_value_grams_value',
      desc: '',
      args: [value],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Let's get acquainted!`
  String get profile_let_get_acquainted {
    return Intl.message(
      'Let\'s get acquainted!',
      name: 'profile_let_get_acquainted',
      desc: '',
      args: [],
    );
  }

  /// `Save your delivery address and be the first one to know about our promotions`
  String get profile_let_get_acquainted_content {
    return Intl.message(
      'Save your delivery address and be the first one to know about our promotions',
      name: 'profile_let_get_acquainted_content',
      desc: '',
      args: [],
    );
  }

  /// `Enter the phone number`
  String get profile_enter_phone_number {
    return Intl.message(
      'Enter the phone number',
      name: 'profile_enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `See the map`
  String get contact_map {
    return Intl.message(
      'See the map',
      name: 'contact_map',
      desc: '',
      args: [],
    );
  }

  /// `Contact support`
  String get contact_support {
    return Intl.message(
      'Contact support',
      name: 'contact_support',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get contact_call {
    return Intl.message(
      'Call',
      name: 'contact_call',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get contact_chat {
    return Intl.message(
      'Chat',
      name: 'contact_chat',
      desc: '',
      args: [],
    );
  }

  /// `Legal documents`
  String get contact_legal_documents {
    return Intl.message(
      'Legal documents',
      name: 'contact_legal_documents',
      desc: '',
      args: [],
    );
  }

  /// `About our App`
  String get contact_about_app {
    return Intl.message(
      'About our App',
      name: 'contact_about_app',
      desc: '',
      args: [],
    );
  }

  /// `Basket`
  String get basket {
    return Intl.message(
      'Basket',
      name: 'basket',
      desc: '',
      args: [],
    );
  }

  /// `Oops, it's empty here!`
  String get basket_empty {
    return Intl.message(
      'Oops, it\'s empty here!',
      name: 'basket_empty',
      desc: '',
      args: [],
    );
  }

  /// `Your basket is empty, open the menu to get started.`
  String get basket_empty_content {
    return Intl.message(
      'Your basket is empty, open the menu to get started.',
      name: 'basket_empty_content',
      desc: '',
      args: [],
    );
  }

  /// `Minimum order amount for delivery is £10`
  String get basket_empty_delivery {
    return Intl.message(
      'Minimum order amount for delivery is £10',
      name: 'basket_empty_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Go to menu`
  String get basket_go_to_menu {
    return Intl.message(
      'Go to menu',
      name: 'basket_go_to_menu',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get region_country {
    return Intl.message(
      'Country',
      name: 'region_country',
      desc: '',
      args: [],
    );
  }

  /// `{isoName, select, BY {Belarus} CZ {Czech Republic} DE {Germany} EE {Estonia} FI {Finland} GB {United Kingdom} KG {Kyrgyzstan} KZ {Kazakhstan} LT {Lithuania} NG {Nigeria} PL {Poland} RO {Romania} RU {Russia} SI {Slovenia} SK {Slovakia} TJ {Tajikistan} UZ {Uzbekistan} VN {Vietnam} other {}}`
  String region_country_name(Object isoName) {
    return Intl.select(
      isoName,
      {
        'BY': 'Belarus',
        'CZ': 'Czech Republic',
        'DE': 'Germany',
        'EE': 'Estonia',
        'FI': 'Finland',
        'GB': 'United Kingdom',
        'KG': 'Kyrgyzstan',
        'KZ': 'Kazakhstan',
        'LT': 'Lithuania',
        'NG': 'Nigeria',
        'PL': 'Poland',
        'RO': 'Romania',
        'RU': 'Russia',
        'SI': 'Slovenia',
        'SK': 'Slovakia',
        'TJ': 'Tajikistan',
        'UZ': 'Uzbekistan',
        'VN': 'Vietnam',
        'other': '',
      },
      name: 'region_country_name',
      desc: '',
      args: [isoName],
    );
  }

  /// `Choose your city`
  String get region_city_search_hint {
    return Intl.message(
      'Choose your city',
      name: 'region_city_search_hint',
      desc: '',
      args: [],
    );
  }

  /// `No pizza store has opened yet in this city`
  String get region_city_search_empty {
    return Intl.message(
      'No pizza store has opened yet in this city',
      name: 'region_city_search_empty',
      desc: '',
      args: [],
    );
  }

  /// `£{value}`
  String price_count(Object value) {
    return Intl.message(
      '£$value',
      name: 'price_count',
      desc: '',
      args: [value],
    );
  }

  /// `+£{value}`
  String extra_price_count(Object value) {
    return Intl.message(
      '+£$value',
      name: 'extra_price_count',
      desc: '',
      args: [value],
    );
  }

  /// `0.00`
  String get price_pattern {
    return Intl.message(
      '0.00',
      name: 'price_pattern',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
