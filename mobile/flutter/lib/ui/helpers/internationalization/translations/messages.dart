import 'package:get/get.dart';
import './strings/strings.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnUs.translations,
        'es_US': EsUs.translations,
        'fr_FR': FrFr.translations,
        'pt_BR': PtBr.translations,
      };
}