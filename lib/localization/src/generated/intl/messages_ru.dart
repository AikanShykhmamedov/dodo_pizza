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

  static String m5(currentPage, pagesCount) =>
      "${currentPage} из ${pagesCount}";

  static String m6(diameter) => "${Intl.select(diameter, {
            'small': 'Маленькая 25 см',
            'medium': 'Средняя 30 см',
            'large': 'Большая 35 см',
            'other': '',
          })}";

  static String m7(diameter) => "${Intl.select(diameter, {
            'small': 'Маленькая',
            'medium': 'Средняя',
            'large': 'Большая',
            'other': '',
          })}";

  static String m8(dough) => "${Intl.select(dough, {
            'original': 'Традиционное тесто',
            'thin': 'Тонкое тесто',
            'other': '',
          })}";

  static String m9(dough) => "${Intl.select(dough, {
            'original': 'Традиционное',
            'thin': 'Тонкое',
            'other': '',
          })}";

  static String m10(value) => "${value} шт.";

  static String m11(value) => "${value} л";

  static String m12(value) => "${value} г";

  static String m13(value) => "от ${value} ₽";

  static String m14(value) => "${value} ₽";

  static String m15(isoName) => "${Intl.select(isoName, {
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
        "basketEmpty": MessageLookupByLibrary.simpleMessage("Ой, пусто!"),
        "basketEmptyContent": MessageLookupByLibrary.simpleMessage(
            "Ваша корзина пуста, добавьте\nпонравившийся товар из «Меню»."),
        "basketEmptyDelivery": MessageLookupByLibrary.simpleMessage(
            "Мы доставим ваш заказ от 549 ₽"),
        "basketGoToMenu":
            MessageLookupByLibrary.simpleMessage("Перейти в меню"),
        "contact": MessageLookupByLibrary.simpleMessage("Контакты"),
        "contactAboutApp": MessageLookupByLibrary.simpleMessage("О приложении"),
        "contactCall": MessageLookupByLibrary.simpleMessage("Позвонить"),
        "contactChat": MessageLookupByLibrary.simpleMessage("Чат"),
        "contactLegalDocuments":
            MessageLookupByLibrary.simpleMessage("Правовые документы"),
        "contactMap": MessageLookupByLibrary.simpleMessage("Пиццерии на карте"),
        "contactSupport":
            MessageLookupByLibrary.simpleMessage("Связаться с поддержкой"),
        "extraPriceCount": m0,
        "menu": MessageLookupByLibrary.simpleMessage("Меню"),
        "menuCategoryName": m1,
        "menuFoodValueCalories":
            MessageLookupByLibrary.simpleMessage("Энерг. ценность"),
        "menuFoodValueCarbohydrates":
            MessageLookupByLibrary.simpleMessage("Углеводы"),
        "menuFoodValueFats": MessageLookupByLibrary.simpleMessage("Жиры"),
        "menuFoodValueGramsValue": m2,
        "menuFoodValueKcalValue": m3,
        "menuFoodValueNutritionFacts":
            MessageLookupByLibrary.simpleMessage("Пищевая ценность на 100 г"),
        "menuFoodValueProteins": MessageLookupByLibrary.simpleMessage("Белки"),
        "menuFoodValueWeight": MessageLookupByLibrary.simpleMessage("Вес"),
        "menuOfferAddBasket": MessageLookupByLibrary.simpleMessage("В корзину"),
        "menuOfferAddBasketForCount": m4,
        "menuOfferAddTaste":
            MessageLookupByLibrary.simpleMessage("Добавить по вкусу"),
        "menuOfferComboSlotChange":
            MessageLookupByLibrary.simpleMessage("Заменить"),
        "menuOfferComboSlotDialogPageOf": m5,
        "menuOfferComboSlotProductCardAddDeal":
            MessageLookupByLibrary.simpleMessage("Выбрать"),
        "menuOfferComboSlotProductCardCancel":
            MessageLookupByLibrary.simpleMessage("Отмена"),
        "menuOfferComboSlotProductCardChangeComposition":
            MessageLookupByLibrary.simpleMessage("Изменить состав"),
        "menuOfferComboSlotProductCardChangeIngredients":
            MessageLookupByLibrary.simpleMessage("Можно удалить"),
        "menuOfferComboSlotProductCardSave":
            MessageLookupByLibrary.simpleMessage("Сохранить"),
        "menuOfferComboSlotProductCardSelected":
            MessageLookupByLibrary.simpleMessage("Уже в комбо"),
        "menuOfferDiameterFullName": m6,
        "menuOfferDiameterName": m7,
        "menuOfferDoughFullName": m8,
        "menuOfferDoughName": m9,
        "menuOfferPieceCount": m10,
        "menuOfferRemoveIngredients":
            MessageLookupByLibrary.simpleMessage("Убрать ингредиенты"),
        "menuOfferRemoveIngredientsDialogDone":
            MessageLookupByLibrary.simpleMessage("Готово"),
        "menuOfferRemoveIngredientsDialogReset":
            MessageLookupByLibrary.simpleMessage("Сбросить"),
        "menuOfferVolumeCount": m11,
        "menuOfferWeightCount": m12,
        "menuPriceFromCount": m13,
        "priceCount": m14,
        "pricePattern": MessageLookupByLibrary.simpleMessage("0"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "profileEnterPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Указать телефон"),
        "profileLetGetAcquainted":
            MessageLookupByLibrary.simpleMessage("Давайте знакомиться!"),
        "profileLetGetAcquaintedContent": MessageLookupByLibrary.simpleMessage(
            "Подарим подарок на день рождения,\nсохраним адрес доставки\nи расскажем об акциях"),
        "regionCitySearchEmpty": MessageLookupByLibrary.simpleMessage(
            "Пиццерия в этом городе\nеще не открылась"),
        "regionCitySearchHint":
            MessageLookupByLibrary.simpleMessage("Найти город"),
        "regionCountry": MessageLookupByLibrary.simpleMessage("Страна"),
        "regionCountryName": m15
      };
}
