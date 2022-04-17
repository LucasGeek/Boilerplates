import 'package:equatable/equatable.dart';

import '../../presentation/protocols/protocols.dart';
import '../protocols/protocols.dart';

class PasswordValidation extends Equatable implements FieldValidation {
  final String field;

  List get props => [field];

  PasswordValidation(this.field);

  ValidationError? validate(Map input) {
    final regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    final isValid =
        input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidFieldPassword;
  }
}
