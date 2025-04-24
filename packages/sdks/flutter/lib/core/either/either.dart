import 'package:sdk_flutter/core/failures/failure.dart';

enum EitherType { right, left }

abstract class Either<R> {
  final EitherType type;

  Either(this.type);

  bool get isLeft => type == EitherType.left;
  bool get isRight => type == EitherType.right;

  Failure? get left;
  R? get right;
}

class Right<R> extends Either<R> {
  final R value;

  Right(this.value) : super(EitherType.right);

  @override
  R get right => value;

  @override
  Failure? get left => null;
}

class Left<R> extends Either<R> {
  final Failure value;

  Left(this.value) : super(EitherType.left);

  @override
  R? get right => null;

  @override
  Failure get left => value;
}

typedef FutureEither<T> = Future<Either<T>>;
