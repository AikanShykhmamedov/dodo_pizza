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
  String menuCategoryName(Object category) {
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
      name: 'menuCategoryName',
      desc: '',
      args: [category],
    );
  }

  /// `from £{value}`
  String menuPriceFromCount(Object value) {
    return Intl.message(
      'from £$value',
      name: 'menuPriceFromCount',
      desc: '',
      args: [value],
    );
  }

  /// `Add to basket`
  String get menuOfferAddBasket {
    return Intl.message(
      'Add to basket',
      name: 'menuOfferAddBasket',
      desc: '',
      args: [],
    );
  }

  /// `Add to basket for £{value}`
  String menuOfferAddBasketForCount(Object value) {
    return Intl.message(
      'Add to basket for £$value',
      name: 'menuOfferAddBasketForCount',
      desc: '',
      args: [value],
    );
  }

  /// `Add to taste`
  String get menuOfferAddTaste {
    return Intl.message(
      'Add to taste',
      name: 'menuOfferAddTaste',
      desc: '',
      args: [],
    );
  }

  /// `{value} g`
  String menuOfferWeightCount(Object value) {
    return Intl.message(
      '$value g',
      name: 'menuOfferWeightCount',
      desc: '',
      args: [value],
    );
  }

  /// `{value} l`
  String menuOfferVolumeCount(Object value) {
    return Intl.message(
      '$value l',
      name: 'menuOfferVolumeCount',
      desc: '',
      args: [value],
    );
  }

  /// `{value} pcs.`
  String menuOfferPieceCount(Object value) {
    return Intl.message(
      '$value pcs.',
      name: 'menuOfferPieceCount',
      desc: '',
      args: [value],
    );
  }

  /// `{diameter, select, small {Small} medium {Medium} large {Large} other {}}`
  String menuOfferDiameterName(Object diameter) {
    return Intl.select(
      diameter,
      {
        'small': 'Small',
        'medium': 'Medium',
        'large': 'Large',
        'other': '',
      },
      name: 'menuOfferDiameterName',
      desc: '',
      args: [diameter],
    );
  }

  /// `{diameter, select, small {Small} medium {Medium} large {Large} other {}}`
  String menuOfferDiameterFullName(Object diameter) {
    return Intl.select(
      diameter,
      {
        'small': 'Small',
        'medium': 'Medium',
        'large': 'Large',
        'other': '',
      },
      name: 'menuOfferDiameterFullName',
      desc: '',
      args: [diameter],
    );
  }

  /// `{dough, select, original {Original} thin {Thin} other {}}`
  String menuOfferDoughName(Object dough) {
    return Intl.select(
      dough,
      {
        'original': 'Original',
        'thin': 'Thin',
        'other': '',
      },
      name: 'menuOfferDoughName',
      desc: '',
      args: [dough],
    );
  }

  /// `{dough, select, original {Original crust} thin {Thin crust} other {}}`
  String menuOfferDoughFullName(Object dough) {
    return Intl.select(
      dough,
      {
        'original': 'Original crust',
        'thin': 'Thin crust',
        'other': '',
      },
      name: 'menuOfferDoughFullName',
      desc: '',
      args: [dough],
    );
  }

  /// `Remove ingredients`
  String get menuOfferRemoveIngredients {
    return Intl.message(
      'Remove ingredients',
      name: 'menuOfferRemoveIngredients',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get menuOfferRemoveIngredientsDialogReset {
    return Intl.message(
      'Reset',
      name: 'menuOfferRemoveIngredientsDialogReset',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get menuOfferRemoveIngredientsDialogDone {
    return Intl.message(
      'Done',
      name: 'menuOfferRemoveIngredientsDialogDone',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get menuOfferComboSlotChange {
    return Intl.message(
      'Change',
      name: 'menuOfferComboSlotChange',
      desc: '',
      args: [],
    );
  }

  /// `{currentPage} of {pagesCount}`
  String menuOfferComboSlotDialogPageOf(Object currentPage, Object pagesCount) {
    return Intl.message(
      '$currentPage of $pagesCount',
      name: 'menuOfferComboSlotDialogPageOf',
      desc: '',
      args: [currentPage, pagesCount],
    );
  }

  /// `Change composition`
  String get menuOfferComboSlotProductCardChangeComposition {
    return Intl.message(
      'Change composition',
      name: 'menuOfferComboSlotProductCardChangeComposition',
      desc: '',
      args: [],
    );
  }

  /// `Can be removed`
  String get menuOfferComboSlotProductCardChangeIngredients {
    return Intl.message(
      'Can be removed',
      name: 'menuOfferComboSlotProductCardChangeIngredients',
      desc: '',
      args: [],
    );
  }

  /// `Add to deal`
  String get menuOfferComboSlotProductCardAddDeal {
    return Intl.message(
      'Add to deal',
      name: 'menuOfferComboSlotProductCardAddDeal',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get menuOfferComboSlotProductCardCancel {
    return Intl.message(
      'Cancel',
      name: 'menuOfferComboSlotProductCardCancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get menuOfferComboSlotProductCardSave {
    return Intl.message(
      'Save',
      name: 'menuOfferComboSlotProductCardSave',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get menuOfferComboSlotProductCardSelected {
    return Intl.message(
      'Selected',
      name: 'menuOfferComboSlotProductCardSelected',
      desc: '',
      args: [],
    );
  }

  /// `Nutrition facts (per 100 g)`
  String get menuFoodValueNutritionFacts {
    return Intl.message(
      'Nutrition facts (per 100 g)',
      name: 'menuFoodValueNutritionFacts',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get menuFoodValueCalories {
    return Intl.message(
      'Calories',
      name: 'menuFoodValueCalories',
      desc: '',
      args: [],
    );
  }

  /// `Proteins`
  String get menuFoodValueProteins {
    return Intl.message(
      'Proteins',
      name: 'menuFoodValueProteins',
      desc: '',
      args: [],
    );
  }

  /// `Fats`
  String get menuFoodValueFats {
    return Intl.message(
      'Fats',
      name: 'menuFoodValueFats',
      desc: '',
      args: [],
    );
  }

  /// `Carbohydrates`
  String get menuFoodValueCarbohydrates {
    return Intl.message(
      'Carbohydrates',
      name: 'menuFoodValueCarbohydrates',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get menuFoodValueWeight {
    return Intl.message(
      'Weight',
      name: 'menuFoodValueWeight',
      desc: '',
      args: [],
    );
  }

  /// `{value} kcal`
  String menuFoodValueKcalValue(Object value) {
    return Intl.message(
      '$value kcal',
      name: 'menuFoodValueKcalValue',
      desc: '',
      args: [value],
    );
  }

  /// `{value} g`
  String menuFoodValueGramsValue(Object value) {
    return Intl.message(
      '$value g',
      name: 'menuFoodValueGramsValue',
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
  String get profileLetGetAcquainted {
    return Intl.message(
      'Let\'s get acquainted!',
      name: 'profileLetGetAcquainted',
      desc: '',
      args: [],
    );
  }

  /// `Save your delivery address and be the first one to know about our promotions`
  String get profileLetGetAcquaintedContent {
    return Intl.message(
      'Save your delivery address and be the first one to know about our promotions',
      name: 'profileLetGetAcquaintedContent',
      desc: '',
      args: [],
    );
  }

  /// `Enter the phone number`
  String get profileEnterPhoneNumber {
    return Intl.message(
      'Enter the phone number',
      name: 'profileEnterPhoneNumber',
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
  String get contactMap {
    return Intl.message(
      'See the map',
      name: 'contactMap',
      desc: '',
      args: [],
    );
  }

  /// `Contact support`
  String get contactSupport {
    return Intl.message(
      'Contact support',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get contactCall {
    return Intl.message(
      'Call',
      name: 'contactCall',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get contactChat {
    return Intl.message(
      'Chat',
      name: 'contactChat',
      desc: '',
      args: [],
    );
  }

  /// `Legal documents`
  String get contactLegalDocuments {
    return Intl.message(
      'Legal documents',
      name: 'contactLegalDocuments',
      desc: '',
      args: [],
    );
  }

  /// `About our App`
  String get contactAboutApp {
    return Intl.message(
      'About our App',
      name: 'contactAboutApp',
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
  String get basketEmpty {
    return Intl.message(
      'Oops, it\'s empty here!',
      name: 'basketEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Your basket is empty, open the menu to get started.`
  String get basketEmptyContent {
    return Intl.message(
      'Your basket is empty, open the menu to get started.',
      name: 'basketEmptyContent',
      desc: '',
      args: [],
    );
  }

  /// `Minimum order amount for delivery is £10`
  String get basketEmptyDelivery {
    return Intl.message(
      'Minimum order amount for delivery is £10',
      name: 'basketEmptyDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Go to menu`
  String get basketGoToMenu {
    return Intl.message(
      'Go to menu',
      name: 'basketGoToMenu',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get regionCountry {
    return Intl.message(
      'Country',
      name: 'regionCountry',
      desc: '',
      args: [],
    );
  }

  /// `{isoName, select, BY {Belarus} CZ {Czech Republic} DE {Germany} EE {Estonia} FI {Finland} GB {United Kingdom} KG {Kyrgyzstan} KZ {Kazakhstan} LT {Lithuania} NG {Nigeria} PL {Poland} RO {Romania} RU {Russia} SI {Slovenia} SK {Slovakia} TJ {Tajikistan} UZ {Uzbekistan} VN {Vietnam} other {}}`
  String regionCountryName(Object isoName) {
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
      name: 'regionCountryName',
      desc: '',
      args: [isoName],
    );
  }

  /// `Choose your city`
  String get regionCitySearchHint {
    return Intl.message(
      'Choose your city',
      name: 'regionCitySearchHint',
      desc: '',
      args: [],
    );
  }

  /// `No pizza store has opened yet in this city`
  String get regionCitySearchEmpty {
    return Intl.message(
      'No pizza store has opened yet in this city',
      name: 'regionCitySearchEmpty',
      desc: '',
      args: [],
    );
  }

  /// `£{value}`
  String priceCount(Object value) {
    return Intl.message(
      '£$value',
      name: 'priceCount',
      desc: '',
      args: [value],
    );
  }

  /// `+£{value}`
  String extraPriceCount(Object value) {
    return Intl.message(
      '+£$value',
      name: 'extraPriceCount',
      desc: '',
      args: [value],
    );
  }

  /// `0.00`
  String get pricePattern {
    return Intl.message(
      '0.00',
      name: 'pricePattern',
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
