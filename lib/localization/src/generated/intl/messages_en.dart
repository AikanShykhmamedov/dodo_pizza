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
        "basket_empty":
            MessageLookupByLibrary.simpleMessage("Oops, it\'s empty here!"),
        "basket_empty_content": MessageLookupByLibrary.simpleMessage(
            "Your basket is empty, open the menu to get started."),
        "basket_empty_delivery": MessageLookupByLibrary.simpleMessage(
            "Minimum order amount for delivery is £10"),
        "basket_go_to_menu": MessageLookupByLibrary.simpleMessage("Go to menu"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "contact_about_app":
            MessageLookupByLibrary.simpleMessage("About our App"),
        "contact_call": MessageLookupByLibrary.simpleMessage("Call"),
        "contact_chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "contact_legal_documents":
            MessageLookupByLibrary.simpleMessage("Legal documents"),
        "contact_map": MessageLookupByLibrary.simpleMessage("See the map"),
        "contact_support":
            MessageLookupByLibrary.simpleMessage("Contact support"),
        "extra_price_count": m0,
        "menu": MessageLookupByLibrary.simpleMessage("Menu"),
        "menu_category_name": m1,
        "menu_food_value_calories":
            MessageLookupByLibrary.simpleMessage("Calories"),
        "menu_food_value_carbohydrates":
            MessageLookupByLibrary.simpleMessage("Carbohydrates"),
        "menu_food_value_fats": MessageLookupByLibrary.simpleMessage("Fats"),
        "menu_food_value_grams_value": m2,
        "menu_food_value_kcal_value": m3,
        "menu_food_value_nutrition_facts":
            MessageLookupByLibrary.simpleMessage("Nutrition facts (per 100 g)"),
        "menu_food_value_proteins":
            MessageLookupByLibrary.simpleMessage("Proteins"),
        "menu_food_value_weight":
            MessageLookupByLibrary.simpleMessage("Weight"),
        "menu_offer_add_basket":
            MessageLookupByLibrary.simpleMessage("Add to basket"),
        "menu_offer_add_basket_for_count": m4,
        "menu_offer_add_taste":
            MessageLookupByLibrary.simpleMessage("Add to taste"),
        "menu_offer_combo_slot_change":
            MessageLookupByLibrary.simpleMessage("Change"),
        "menu_offer_combo_slot_dialog_page_of": m5,
        "menu_offer_combo_slot_product_card_add_deal":
            MessageLookupByLibrary.simpleMessage("Add to deal"),
        "menu_offer_combo_slot_product_card_cancel":
            MessageLookupByLibrary.simpleMessage("Cancel"),
        "menu_offer_combo_slot_product_card_change_composition":
            MessageLookupByLibrary.simpleMessage("Change composition"),
        "menu_offer_combo_slot_product_card_change_ingredients":
            MessageLookupByLibrary.simpleMessage("Can be removed"),
        "menu_offer_combo_slot_product_card_save":
            MessageLookupByLibrary.simpleMessage("Save"),
        "menu_offer_combo_slot_product_card_selected":
            MessageLookupByLibrary.simpleMessage("Selected"),
        "menu_offer_diameter_full_name": m6,
        "menu_offer_diameter_name": m7,
        "menu_offer_dough_full_name": m8,
        "menu_offer_dough_name": m9,
        "menu_offer_piece_count": m10,
        "menu_offer_remove_ingredients":
            MessageLookupByLibrary.simpleMessage("Remove ingredients"),
        "menu_offer_remove_ingredients_dialog_done":
            MessageLookupByLibrary.simpleMessage("Done"),
        "menu_offer_remove_ingredients_dialog_reset":
            MessageLookupByLibrary.simpleMessage("Reset"),
        "menu_offer_volume_count": m11,
        "menu_offer_weight_count": m12,
        "menu_price_from_count": m13,
        "price_count": m14,
        "price_pattern": MessageLookupByLibrary.simpleMessage("0.00"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile_enter_phone_number":
            MessageLookupByLibrary.simpleMessage("Enter the phone number"),
        "profile_let_get_acquainted":
            MessageLookupByLibrary.simpleMessage("Let\'s get acquainted!"),
        "profile_let_get_acquainted_content": MessageLookupByLibrary.simpleMessage(
            "Save your delivery address and be the first one to know about our promotions"),
        "region_city_search_empty": MessageLookupByLibrary.simpleMessage(
            "No pizza store has opened yet in this city"),
        "region_city_search_hint":
            MessageLookupByLibrary.simpleMessage("Choose your city"),
        "region_country": MessageLookupByLibrary.simpleMessage("Country"),
        "region_country_name": m15
      };
}
