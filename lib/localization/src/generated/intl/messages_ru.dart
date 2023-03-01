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

  static String m0(value) => "+${value} ₽";

  static String m1(category) => "${Intl.select(category, {
            'pizza': 'Пицца',
            'combo': 'Комбо',
            'snacks': 'Закуски',
            'desserts': 'Десерты',
            'drinks': 'Напитки',
            'sauces': 'Соусы',
            'goods': 'Другие товары',
            'other': '',
          })}";

  static String m2(value) => "${value} г";

  static String m3(value) => "${value} ккал";

  static String m4(value) => "В корзину за ${value} ₽";

  static String m5(diameter) => "${Intl.select(diameter, {
            'small': 'Маленькая 25 см',
            'medium': 'Средняя 30 см',
            'large': 'Большая 35 см',
            'other': '',
          })}";

  static String m6(diameter) => "${Intl.select(diameter, {
            'small': 'Маленькая',
            'medium': 'Средняя',
            'large': 'Большая',
            'other': '',
          })}";

  static String m7(dough) => "${Intl.select(dough, {
            'original': 'Традиционное тесто',
            'thin': 'Тонкое тесто',
            'other': '',
          })}";

  static String m8(dough) => "${Intl.select(dough, {
            'original': 'Традиционное',
            'thin': 'Тонкое',
            'other': '',
          })}";

  static String m9(value) => "${value} шт.";

  static String m10(value) => "${value} л";

  static String m11(value) => "${value} г";

  static String m12(value) => "от ${value} ₽";

  static String m13(value) => "${value} ₽";

  static String m14(isoName) => "${Intl.select(isoName, {
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
        "extra_price_count": m0,
        "menu": MessageLookupByLibrary.simpleMessage("Меню"),
        "menu_category_name": m1,
        "menu_food_value_calories":
            MessageLookupByLibrary.simpleMessage("Энерг. ценность"),
        "menu_food_value_carbohydrates":
            MessageLookupByLibrary.simpleMessage("Углеводы"),
        "menu_food_value_fats": MessageLookupByLibrary.simpleMessage("Жиры"),
        "menu_food_value_grams_value": m2,
        "menu_food_value_kcal_value": m3,
        "menu_food_value_nutrition_facts":
            MessageLookupByLibrary.simpleMessage("Пищевая ценность на 100 г"),
        "menu_food_value_proteins":
            MessageLookupByLibrary.simpleMessage("Белки"),
        "menu_food_value_weight": MessageLookupByLibrary.simpleMessage("Вес"),
        "menu_offer_add_basket":
            MessageLookupByLibrary.simpleMessage("В корзину"),
        "menu_offer_add_basket_for_count": m4,
        "menu_offer_add_taste":
            MessageLookupByLibrary.simpleMessage("Добавить по вкусу"),
        "menu_offer_combo_slot_change":
            MessageLookupByLibrary.simpleMessage("Заменить"),
        "menu_offer_diameter_full_name": m5,
        "menu_offer_diameter_name": m6,
        "menu_offer_dough_full_name": m7,
        "menu_offer_dough_name": m8,
        "menu_offer_piece_count": m9,
        "menu_offer_remove_ingredients":
            MessageLookupByLibrary.simpleMessage("Убрать ингредиенты"),
        "menu_offer_remove_ingredients_dialog_done":
            MessageLookupByLibrary.simpleMessage("Готово"),
        "menu_offer_remove_ingredients_dialog_reset":
            MessageLookupByLibrary.simpleMessage("Сбросить"),
        "menu_offer_volume_count": m10,
        "menu_offer_weight_count": m11,
        "menu_price_from_count": m12,
        "price_count": m13,
        "price_pattern": MessageLookupByLibrary.simpleMessage("0"),
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
        "region_country_name": m14
      };
}
