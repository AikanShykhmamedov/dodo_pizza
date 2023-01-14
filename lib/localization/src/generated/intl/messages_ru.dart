// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(isoName) => "${Intl.select(isoName, {
            'BY': 'Беларусь',
            'CZ': 'Чехия',
            'DE': 'Германия',
            'EE': 'Эстония',
            'FI': 'Финляндия',
            'GB': 'Великобритания',
            'KG': 'Кыргызстан',
            'KZ': 'Казахстан',
            'LT': 'Литва',
            'NG': 'Нигерия',
            'PL': 'Польша',
            'RO': 'Румыния',
            'RU': 'Россия',
            'SI': 'Словения',
            'SK': 'Словакия',
            'TJ': 'Таджикистан',
            'UZ': 'Узбекистан',
            'VN': 'Вьетнам',
            'other': '',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "basket": MessageLookupByLibrary.simpleMessage("Корзина"),
        "basket_empty": MessageLookupByLibrary.simpleMessage("Ой, пусто!"),
        "basket_empty_content": MessageLookupByLibrary.simpleMessage(
            "Ваша корзина пуста, добавьте\nпонравившийся товар из «Меню»."),
        "basket_empty_delivery": MessageLookupByLibrary.simpleMessage(
            "Мы доставим ваш заказ от 549 ₽"),
        "basket_go_to_menu":
            MessageLookupByLibrary.simpleMessage("Перейти в меню"),
        "contact": MessageLookupByLibrary.simpleMessage("Контакты"),
        "contact_about_app":
            MessageLookupByLibrary.simpleMessage("О приложении"),
        "contact_call": MessageLookupByLibrary.simpleMessage("Позвонить"),
        "contact_chat": MessageLookupByLibrary.simpleMessage("Чат"),
        "contact_legal_documents":
            MessageLookupByLibrary.simpleMessage("Правовые документы"),
        "contact_map":
            MessageLookupByLibrary.simpleMessage("Пиццерии на карте"),
        "contact_support":
            MessageLookupByLibrary.simpleMessage("Связаться с поддержкой"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "profile_enter_phone_number":
            MessageLookupByLibrary.simpleMessage("Указать телефон"),
        "profile_let_get_acquainted":
            MessageLookupByLibrary.simpleMessage("Давайте знакомиться!"),
        "profile_let_get_acquainted_content": MessageLookupByLibrary.simpleMessage(
            "Подарим подарок на день рождения,\nсохраним адрес доставки\nи расскажем об акциях"),
        "region_city_search_empty": MessageLookupByLibrary.simpleMessage(
            "Пиццерия в этом городе\nеще не открылась"),
        "region_city_search_hint":
            MessageLookupByLibrary.simpleMessage("Найти город"),
        "region_country": MessageLookupByLibrary.simpleMessage("Страна"),
        "region_country_name": m0
      };
}
