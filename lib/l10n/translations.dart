
import 'package:get/get.dart';
import 'messages_en.dart';
import 'messages_pl.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': messagesEn,
        'pl': messagesPl,
      };
}
