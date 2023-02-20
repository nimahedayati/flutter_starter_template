import 'package:dartz/dartz.dart';
import 'package:flutter_starter_template/data/network/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
