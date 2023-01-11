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
