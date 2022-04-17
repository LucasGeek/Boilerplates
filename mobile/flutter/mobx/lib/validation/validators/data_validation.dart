import 'package:equatable/equatable.dart';

import '../../presentation/protocols/protocols.dart';
import '../protocols/protocols.dart';

class DataValidation extends Equatable implements FieldValidation {
  final String field;

  List get props => [field];

  DataValidation(this.field);

  ValidationError? validate(Map input) {
    final isValid =
        input[field]?.isNotEmpty != true || _dateValid(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }

  bool _dateValid(String data) {
    if (data.length != 10) {
      return false;
    } else {
      try {
        List<String> array = data.split('/');

        int day = int.parse(array[0]);
        int month = int.parse(array[1]);
        int year = int.parse(array[2]);

        if (day < 1 || day > 31) {
          return false;
        } else if (month < 1 || month > 12) {
          return false;
        } else if (year < 1 || year > DateTime.now().year) {
          return false;
        }

        return true;
      } catch (e) {
        return false;
      }
    }
  }
}
