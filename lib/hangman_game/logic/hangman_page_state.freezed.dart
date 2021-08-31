// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hangman_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HangmanPageStateTearOff {
  const _$HangmanPageStateTearOff();

  HangmanPageStateLoading loading() {
    return const HangmanPageStateLoading();
  }

  HangmanPageStateError error(String message) {
    return HangmanPageStateError(
      message,
    );
  }

  HangmanPageStateGameOn gameOn(
      {required String misteryWord,
      required int round,
      List<String> pressedKeyList = const <String>[],
      int lives = 6,
      bool mysteryWordCompleted = false}) {
    return HangmanPageStateGameOn(
      misteryWord: misteryWord,
      round: round,
      pressedKeyList: pressedKeyList,
      lives: lives,
      mysteryWordCompleted: mysteryWordCompleted,
    );
  }

  HangmanPageStateGameOver gameOver() {
    return const HangmanPageStateGameOver();
  }
}

/// @nodoc
const $HangmanPageState = _$HangmanPageStateTearOff();

/// @nodoc
mixin _$HangmanPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String misteryWord, int round,
            List<String> pressedKeyList, int lives, bool mysteryWordCompleted)
        gameOn,
    required TResult Function() gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String misteryWord, int round, List<String> pressedKeyList,
            int lives, bool mysteryWordCompleted)?
        gameOn,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HangmanPageStateLoading value) loading,
    required TResult Function(HangmanPageStateError value) error,
    required TResult Function(HangmanPageStateGameOn value) gameOn,
    required TResult Function(HangmanPageStateGameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HangmanPageStateLoading value)? loading,
    TResult Function(HangmanPageStateError value)? error,
    TResult Function(HangmanPageStateGameOn value)? gameOn,
    TResult Function(HangmanPageStateGameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HangmanPageStateCopyWith<$Res> {
  factory $HangmanPageStateCopyWith(
          HangmanPageState value, $Res Function(HangmanPageState) then) =
      _$HangmanPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HangmanPageStateCopyWithImpl<$Res>
    implements $HangmanPageStateCopyWith<$Res> {
  _$HangmanPageStateCopyWithImpl(this._value, this._then);

  final HangmanPageState _value;
  // ignore: unused_field
  final $Res Function(HangmanPageState) _then;
}

/// @nodoc
abstract class $HangmanPageStateLoadingCopyWith<$Res> {
  factory $HangmanPageStateLoadingCopyWith(HangmanPageStateLoading value,
          $Res Function(HangmanPageStateLoading) then) =
      _$HangmanPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HangmanPageStateLoadingCopyWithImpl<$Res>
    extends _$HangmanPageStateCopyWithImpl<$Res>
    implements $HangmanPageStateLoadingCopyWith<$Res> {
  _$HangmanPageStateLoadingCopyWithImpl(HangmanPageStateLoading _value,
      $Res Function(HangmanPageStateLoading) _then)
      : super(_value, (v) => _then(v as HangmanPageStateLoading));

  @override
  HangmanPageStateLoading get _value => super._value as HangmanPageStateLoading;
}

/// @nodoc

class _$HangmanPageStateLoading implements HangmanPageStateLoading {
  const _$HangmanPageStateLoading();

  @override
  String toString() {
    return 'HangmanPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HangmanPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String misteryWord, int round,
            List<String> pressedKeyList, int lives, bool mysteryWordCompleted)
        gameOn,
    required TResult Function() gameOver,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String misteryWord, int round, List<String> pressedKeyList,
            int lives, bool mysteryWordCompleted)?
        gameOn,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HangmanPageStateLoading value) loading,
    required TResult Function(HangmanPageStateError value) error,
    required TResult Function(HangmanPageStateGameOn value) gameOn,
    required TResult Function(HangmanPageStateGameOver value) gameOver,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HangmanPageStateLoading value)? loading,
    TResult Function(HangmanPageStateError value)? error,
    TResult Function(HangmanPageStateGameOn value)? gameOn,
    TResult Function(HangmanPageStateGameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HangmanPageStateLoading implements HangmanPageState {
  const factory HangmanPageStateLoading() = _$HangmanPageStateLoading;
}

/// @nodoc
abstract class $HangmanPageStateErrorCopyWith<$Res> {
  factory $HangmanPageStateErrorCopyWith(HangmanPageStateError value,
          $Res Function(HangmanPageStateError) then) =
      _$HangmanPageStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$HangmanPageStateErrorCopyWithImpl<$Res>
    extends _$HangmanPageStateCopyWithImpl<$Res>
    implements $HangmanPageStateErrorCopyWith<$Res> {
  _$HangmanPageStateErrorCopyWithImpl(
      HangmanPageStateError _value, $Res Function(HangmanPageStateError) _then)
      : super(_value, (v) => _then(v as HangmanPageStateError));

  @override
  HangmanPageStateError get _value => super._value as HangmanPageStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(HangmanPageStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HangmanPageStateError implements HangmanPageStateError {
  const _$HangmanPageStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HangmanPageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HangmanPageStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $HangmanPageStateErrorCopyWith<HangmanPageStateError> get copyWith =>
      _$HangmanPageStateErrorCopyWithImpl<HangmanPageStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String misteryWord, int round,
            List<String> pressedKeyList, int lives, bool mysteryWordCompleted)
        gameOn,
    required TResult Function() gameOver,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String misteryWord, int round, List<String> pressedKeyList,
            int lives, bool mysteryWordCompleted)?
        gameOn,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HangmanPageStateLoading value) loading,
    required TResult Function(HangmanPageStateError value) error,
    required TResult Function(HangmanPageStateGameOn value) gameOn,
    required TResult Function(HangmanPageStateGameOver value) gameOver,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HangmanPageStateLoading value)? loading,
    TResult Function(HangmanPageStateError value)? error,
    TResult Function(HangmanPageStateGameOn value)? gameOn,
    TResult Function(HangmanPageStateGameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HangmanPageStateError implements HangmanPageState {
  const factory HangmanPageStateError(String message) = _$HangmanPageStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HangmanPageStateErrorCopyWith<HangmanPageStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HangmanPageStateGameOnCopyWith<$Res> {
  factory $HangmanPageStateGameOnCopyWith(HangmanPageStateGameOn value,
          $Res Function(HangmanPageStateGameOn) then) =
      _$HangmanPageStateGameOnCopyWithImpl<$Res>;
  $Res call(
      {String misteryWord,
      int round,
      List<String> pressedKeyList,
      int lives,
      bool mysteryWordCompleted});
}

/// @nodoc
class _$HangmanPageStateGameOnCopyWithImpl<$Res>
    extends _$HangmanPageStateCopyWithImpl<$Res>
    implements $HangmanPageStateGameOnCopyWith<$Res> {
  _$HangmanPageStateGameOnCopyWithImpl(HangmanPageStateGameOn _value,
      $Res Function(HangmanPageStateGameOn) _then)
      : super(_value, (v) => _then(v as HangmanPageStateGameOn));

  @override
  HangmanPageStateGameOn get _value => super._value as HangmanPageStateGameOn;

  @override
  $Res call({
    Object? misteryWord = freezed,
    Object? round = freezed,
    Object? pressedKeyList = freezed,
    Object? lives = freezed,
    Object? mysteryWordCompleted = freezed,
  }) {
    return _then(HangmanPageStateGameOn(
      misteryWord: misteryWord == freezed
          ? _value.misteryWord
          : misteryWord // ignore: cast_nullable_to_non_nullable
              as String,
      round: round == freezed
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      pressedKeyList: pressedKeyList == freezed
          ? _value.pressedKeyList
          : pressedKeyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lives: lives == freezed
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      mysteryWordCompleted: mysteryWordCompleted == freezed
          ? _value.mysteryWordCompleted
          : mysteryWordCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HangmanPageStateGameOn implements HangmanPageStateGameOn {
  const _$HangmanPageStateGameOn(
      {required this.misteryWord,
      required this.round,
      this.pressedKeyList = const <String>[],
      this.lives = 6,
      this.mysteryWordCompleted = false});

  @override
  final String misteryWord;
  @override
  final int round;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> pressedKeyList;
  @JsonKey(defaultValue: 6)
  @override
  final int lives;
  @JsonKey(defaultValue: false)
  @override
  final bool mysteryWordCompleted;

  @override
  String toString() {
    return 'HangmanPageState.gameOn(misteryWord: $misteryWord, round: $round, pressedKeyList: $pressedKeyList, lives: $lives, mysteryWordCompleted: $mysteryWordCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HangmanPageStateGameOn &&
            (identical(other.misteryWord, misteryWord) ||
                const DeepCollectionEquality()
                    .equals(other.misteryWord, misteryWord)) &&
            (identical(other.round, round) ||
                const DeepCollectionEquality().equals(other.round, round)) &&
            (identical(other.pressedKeyList, pressedKeyList) ||
                const DeepCollectionEquality()
                    .equals(other.pressedKeyList, pressedKeyList)) &&
            (identical(other.lives, lives) ||
                const DeepCollectionEquality().equals(other.lives, lives)) &&
            (identical(other.mysteryWordCompleted, mysteryWordCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.mysteryWordCompleted, mysteryWordCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(misteryWord) ^
      const DeepCollectionEquality().hash(round) ^
      const DeepCollectionEquality().hash(pressedKeyList) ^
      const DeepCollectionEquality().hash(lives) ^
      const DeepCollectionEquality().hash(mysteryWordCompleted);

  @JsonKey(ignore: true)
  @override
  $HangmanPageStateGameOnCopyWith<HangmanPageStateGameOn> get copyWith =>
      _$HangmanPageStateGameOnCopyWithImpl<HangmanPageStateGameOn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String misteryWord, int round,
            List<String> pressedKeyList, int lives, bool mysteryWordCompleted)
        gameOn,
    required TResult Function() gameOver,
  }) {
    return gameOn(
        misteryWord, round, pressedKeyList, lives, mysteryWordCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String misteryWord, int round, List<String> pressedKeyList,
            int lives, bool mysteryWordCompleted)?
        gameOn,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (gameOn != null) {
      return gameOn(
          misteryWord, round, pressedKeyList, lives, mysteryWordCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HangmanPageStateLoading value) loading,
    required TResult Function(HangmanPageStateError value) error,
    required TResult Function(HangmanPageStateGameOn value) gameOn,
    required TResult Function(HangmanPageStateGameOver value) gameOver,
  }) {
    return gameOn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HangmanPageStateLoading value)? loading,
    TResult Function(HangmanPageStateError value)? error,
    TResult Function(HangmanPageStateGameOn value)? gameOn,
    TResult Function(HangmanPageStateGameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOn != null) {
      return gameOn(this);
    }
    return orElse();
  }
}

abstract class HangmanPageStateGameOn implements HangmanPageState {
  const factory HangmanPageStateGameOn(
      {required String misteryWord,
      required int round,
      List<String> pressedKeyList,
      int lives,
      bool mysteryWordCompleted}) = _$HangmanPageStateGameOn;

  String get misteryWord => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  List<String> get pressedKeyList => throw _privateConstructorUsedError;
  int get lives => throw _privateConstructorUsedError;
  bool get mysteryWordCompleted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HangmanPageStateGameOnCopyWith<HangmanPageStateGameOn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HangmanPageStateGameOverCopyWith<$Res> {
  factory $HangmanPageStateGameOverCopyWith(HangmanPageStateGameOver value,
          $Res Function(HangmanPageStateGameOver) then) =
      _$HangmanPageStateGameOverCopyWithImpl<$Res>;
}

/// @nodoc
class _$HangmanPageStateGameOverCopyWithImpl<$Res>
    extends _$HangmanPageStateCopyWithImpl<$Res>
    implements $HangmanPageStateGameOverCopyWith<$Res> {
  _$HangmanPageStateGameOverCopyWithImpl(HangmanPageStateGameOver _value,
      $Res Function(HangmanPageStateGameOver) _then)
      : super(_value, (v) => _then(v as HangmanPageStateGameOver));

  @override
  HangmanPageStateGameOver get _value =>
      super._value as HangmanPageStateGameOver;
}

/// @nodoc

class _$HangmanPageStateGameOver implements HangmanPageStateGameOver {
  const _$HangmanPageStateGameOver();

  @override
  String toString() {
    return 'HangmanPageState.gameOver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HangmanPageStateGameOver);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String misteryWord, int round,
            List<String> pressedKeyList, int lives, bool mysteryWordCompleted)
        gameOn,
    required TResult Function() gameOver,
  }) {
    return gameOver();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String misteryWord, int round, List<String> pressedKeyList,
            int lives, bool mysteryWordCompleted)?
        gameOn,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HangmanPageStateLoading value) loading,
    required TResult Function(HangmanPageStateError value) error,
    required TResult Function(HangmanPageStateGameOn value) gameOn,
    required TResult Function(HangmanPageStateGameOver value) gameOver,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HangmanPageStateLoading value)? loading,
    TResult Function(HangmanPageStateError value)? error,
    TResult Function(HangmanPageStateGameOn value)? gameOn,
    TResult Function(HangmanPageStateGameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class HangmanPageStateGameOver implements HangmanPageState {
  const factory HangmanPageStateGameOver() = _$HangmanPageStateGameOver;
}
