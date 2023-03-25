// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(value) => "+£${value}";

  static String m1(category) => "${Intl.select(category, {
            'pizza': 'Pizza',
            'combo': 'Combo',
            'snacks': 'Snacks',
            'desserts': 'Desserts',
            'drinks': 'Drinks',
            'sauces': 'Sauces',
            'goods': 'Goods',
            'other': '',
          })}";

  static String m2(value) => "${value} g";

  static String m3(value) => "${value} kcal";

  static String m4(value) => "Add to basket for £${value}";

  static String m5(currentPage, pagesCount) =>
      "${currentPage} of ${pagesCount}";

  static String m6(diameter) => "${Intl.select(diameter, {
            'small': 'Small',
            'medium': 'Medium',
            'large': 'Large',
            'other': '',
          })}";

  static String m7(diameter) => "${Intl.select(diameter, {
            'small': 'Small',
            'medium': 'Medium',
            'large': 'Large',
            'other': '',
          })}";

  static String m8(dough) => "${Intl.select(dough, {
            'original': 'Original crust',
            'thin': 'Thin crust',
            'other': '',
          })}";

  static String m9(dough) => "${Intl.select(dough, {
            'original': 'Original',
            'thin': 'Thin',
            'other': '',
          })}";

  static String m10(value) => "${value} pcs.";

  static String m11(value) => "${value} l";

  static String m12(value) => "${value} g";

  static String m13(value) => "from £${value}";

  static String m14(value) => "£${value}";

  static String m15(isoName) => "${Intl.select(isoName, {
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
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "basket": MessageLookupByLibrary.simpleMessage("Basket"),
        "basketEmpty":
            MessageLookupByLibrary.simpleMessage("Oops, it\'s empty here!"),
        "basketEmptyContent": MessageLookupByLibrary.simpleMessage(
            "Your basket is empty, open the menu to get started."),
        "basketEmptyDelivery": MessageLookupByLibrary.simpleMessage(
            "Minimum order amount for delivery is £10"),
        "basketGoToMenu": MessageLookupByLibrary.simpleMessage("Go to menu"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "contactAboutApp":
            MessageLookupByLibrary.simpleMessage("About our App"),
        "contactCall": MessageLookupByLibrary.simpleMessage("Call"),
        "contactChat": MessageLookupByLibrary.simpleMessage("Chat"),
        "contactLegalDocuments":
            MessageLookupByLibrary.simpleMessage("Legal documents"),
        "contactMap": MessageLookupByLibrary.simpleMessage("See the map"),
        "contactSupport":
            MessageLookupByLibrary.simpleMessage("Contact support"),
        "extraPriceCount": m0,
        "menu": MessageLookupByLibrary.simpleMessage("Menu"),
        "menuCategoryName": m1,
        "menuFoodValueCalories":
            MessageLookupByLibrary.simpleMessage("Calories"),
        "menuFoodValueCarbohydrates":
            MessageLookupByLibrary.simpleMessage("Carbohydrates"),
        "menuFoodValueFats": MessageLookupByLibrary.simpleMessage("Fats"),
        "menuFoodValueGramsValue": m2,
        "menuFoodValueKcalValue": m3,
        "menuFoodValueNutritionFacts":
            MessageLookupByLibrary.simpleMessage("Nutrition facts (per 100 g)"),
        "menuFoodValueProteins":
            MessageLookupByLibrary.simpleMessage("Proteins"),
        "menuFoodValueWeight": MessageLookupByLibrary.simpleMessage("Weight"),
        "menuOfferAddBasket":
            MessageLookupByLibrary.simpleMessage("Add to basket"),
        "menuOfferAddBasketForCount": m4,
        "menuOfferAddTaste":
            MessageLookupByLibrary.simpleMessage("Add to taste"),
        "menuOfferComboSlotChange":
            MessageLookupByLibrary.simpleMessage("Change"),
        "menuOfferComboSlotDialogPageOf": m5,
        "menuOfferComboSlotProductCardAddDeal":
            MessageLookupByLibrary.simpleMessage("Add to deal"),
        "menuOfferComboSlotProductCardCancel":
            MessageLookupByLibrary.simpleMessage("Cancel"),
        "menuOfferComboSlotProductCardChangeComposition":
            MessageLookupByLibrary.simpleMessage("Change composition"),
        "menuOfferComboSlotProductCardChangeIngredients":
            MessageLookupByLibrary.simpleMessage("Can be removed"),
        "menuOfferComboSlotProductCardSave":
            MessageLookupByLibrary.simpleMessage("Save"),
        "menuOfferComboSlotProductCardSelected":
            MessageLookupByLibrary.simpleMessage("Selected"),
        "menuOfferDiameterFullName": m6,
        "menuOfferDiameterName": m7,
        "menuOfferDoughFullName": m8,
        "menuOfferDoughName": m9,
        "menuOfferPieceCount": m10,
        "menuOfferRemoveIngredients":
            MessageLookupByLibrary.simpleMessage("Remove ingredients"),
        "menuOfferRemoveIngredientsDialogDone":
            MessageLookupByLibrary.simpleMessage("Done"),
        "menuOfferRemoveIngredientsDialogReset":
            MessageLookupByLibrary.simpleMessage("Reset"),
        "menuOfferVolumeCount": m11,
        "menuOfferWeightCount": m12,
        "menuPriceFromCount": m13,
        "priceCount": m14,
        "pricePattern": MessageLookupByLibrary.simpleMessage("0.00"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profileEnterPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Enter the phone number"),
        "profileLetGetAcquainted":
            MessageLookupByLibrary.simpleMessage("Let\'s get acquainted!"),
        "profileLetGetAcquaintedContent": MessageLookupByLibrary.simpleMessage(
            "Save your delivery address and be the first one to know about our promotions"),
        "regionCitySearchEmpty": MessageLookupByLibrary.simpleMessage(
            "No pizza store has opened yet in this city"),
        "regionCitySearchHint":
            MessageLookupByLibrary.simpleMessage("Choose your city"),
        "regionCountry": MessageLookupByLibrary.simpleMessage("Country"),
        "regionCountryName": m15
      };
}
