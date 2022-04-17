import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class FailureImpl implements Failure {
  final String message;

  FailureImpl({required this.message});

  @override
  List<Object> get props => [message];

  @override
  bool get stringify => true;
}
