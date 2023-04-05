// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardEventTearOff {
  const _$CardEventTearOff();

  _GetCard getCard() {
    return _GetCard();
  }

  _AddCard addCard({required CardModel cardModel}) {
    return _AddCard(
      cardModel: cardModel,
    );
  }
}

/// @nodoc
const $CardEvent = _$CardEventTearOff();

/// @nodoc
mixin _$CardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCard,
    required TResult Function(CardModel cardModel) addCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCard,
    TResult Function(CardModel cardModel)? addCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCard,
    TResult Function(CardModel cardModel)? addCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_AddCard value) addCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCard value)? getCard,
    TResult Function(_AddCard value)? addCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCard value)? getCard,
    TResult Function(_AddCard value)? addCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventCopyWith<$Res> {
  factory $CardEventCopyWith(CardEvent value, $Res Function(CardEvent) then) =
      _$CardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardEventCopyWithImpl<$Res> implements $CardEventCopyWith<$Res> {
  _$CardEventCopyWithImpl(this._value, this._then);

  final CardEvent _value;
  // ignore: unused_field
  final $Res Function(CardEvent) _then;
}

/// @nodoc
abstract class _$GetCardCopyWith<$Res> {
  factory _$GetCardCopyWith(_GetCard value, $Res Function(_GetCard) then) =
      __$GetCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCardCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements _$GetCardCopyWith<$Res> {
  __$GetCardCopyWithImpl(_GetCard _value, $Res Function(_GetCard) _then)
      : super(_value, (v) => _then(v as _GetCard));

  @override
  _GetCard get _value => super._value as _GetCard;
}

/// @nodoc

class _$_GetCard implements _GetCard {
  _$_GetCard();

  @override
  String toString() {
    return 'CardEvent.getCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCard,
    required TResult Function(CardModel cardModel) addCard,
  }) {
    return getCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCard,
    TResult Function(CardModel cardModel)? addCard,
  }) {
    return getCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCard,
    TResult Function(CardModel cardModel)? addCard,
    required TResult orElse(),
  }) {
    if (getCard != null) {
      return getCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_AddCard value) addCard,
  }) {
    return getCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCard value)? getCard,
    TResult Function(_AddCard value)? addCard,
  }) {
    return getCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCard value)? getCard,
    TResult Function(_AddCard value)? addCard,
    required TResult orElse(),
  }) {
    if (getCard != null) {
      return getCard(this);
    }
    return orElse();
  }
}

abstract class _GetCard implements CardEvent {
  factory _GetCard() = _$_GetCard;
}

/// @nodoc
abstract class _$AddCardCopyWith<$Res> {
  factory _$AddCardCopyWith(_AddCard value, $Res Function(_AddCard) then) =
      __$AddCardCopyWithImpl<$Res>;
  $Res call({CardModel cardModel});
}

/// @nodoc
class __$AddCardCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements _$AddCardCopyWith<$Res> {
  __$AddCardCopyWithImpl(_AddCard _value, $Res Function(_AddCard) _then)
      : super(_value, (v) => _then(v as _AddCard));

  @override
  _AddCard get _value => super._value as _AddCard;

  @override
  $Res call({
    Object? cardModel = freezed,
  }) {
    return _then(_AddCard(
      cardModel: cardModel == freezed
          ? _value.cardModel
          : cardModel // ignore: cast_nullable_to_non_nullable
              as CardModel,
    ));
  }
}

/// @nodoc

class _$_AddCard implements _AddCard {
  _$_AddCard({required this.cardModel});

  @override
  final CardModel cardModel;

  @override
  String toString() {
    return 'CardEvent.addCard(cardModel: $cardModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCard &&
            const DeepCollectionEquality().equals(other.cardModel, cardModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cardModel));

  @JsonKey(ignore: true)
  @override
  _$AddCardCopyWith<_AddCard> get copyWith =>
      __$AddCardCopyWithImpl<_AddCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCard,
    required TResult Function(CardModel cardModel) addCard,
  }) {
    return addCard(cardModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCard,
    TResult Function(CardModel cardModel)? addCard,
  }) {
    return addCard?.call(cardModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCard,
    TResult Function(CardModel cardModel)? addCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(cardModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_AddCard value) addCard,
  }) {
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCard value)? getCard,
    TResult Function(_AddCard value)? addCard,
  }) {
    return addCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCard value)? getCard,
    TResult Function(_AddCard value)? addCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class _AddCard implements CardEvent {
  factory _AddCard({required CardModel cardModel}) = _$_AddCard;

  CardModel get cardModel;
  @JsonKey(ignore: true)
  _$AddCardCopyWith<_AddCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CardStateTearOff {
  const _$CardStateTearOff();

  _CardState call(
      {List<CardModel> cards = const [],
      String cardName = '',
      String cardNumberError = '',
      String monthError = '',
      String yearError = '',
      bool isEnabled = true,
      double gradientValue = 1.0,
      String cardImage = ''}) {
    return _CardState(
      cards: cards,
      cardName: cardName,
      cardNumberError: cardNumberError,
      monthError: monthError,
      yearError: yearError,
      isEnabled: isEnabled,
      gradientValue: gradientValue,
      cardImage: cardImage,
    );
  }
}

/// @nodoc
const $CardState = _$CardStateTearOff();

/// @nodoc
mixin _$CardState {
  List<CardModel> get cards => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  String get cardNumberError => throw _privateConstructorUsedError;
  String get monthError => throw _privateConstructorUsedError;
  String get yearError => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  double get gradientValue => throw _privateConstructorUsedError;
  String get cardImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStateCopyWith<CardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardModel> cards,
      String cardName,
      String cardNumberError,
      String monthError,
      String yearError,
      bool isEnabled,
      double gradientValue,
      String cardImage});
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res> implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  final CardState _value;
  // ignore: unused_field
  final $Res Function(CardState) _then;

  @override
  $Res call({
    Object? cards = freezed,
    Object? cardName = freezed,
    Object? cardNumberError = freezed,
    Object? monthError = freezed,
    Object? yearError = freezed,
    Object? isEnabled = freezed,
    Object? gradientValue = freezed,
    Object? cardImage = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      cardName: cardName == freezed
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumberError: cardNumberError == freezed
          ? _value.cardNumberError
          : cardNumberError // ignore: cast_nullable_to_non_nullable
              as String,
      monthError: monthError == freezed
          ? _value.monthError
          : monthError // ignore: cast_nullable_to_non_nullable
              as String,
      yearError: yearError == freezed
          ? _value.yearError
          : yearError // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      gradientValue: gradientValue == freezed
          ? _value.gradientValue
          : gradientValue // ignore: cast_nullable_to_non_nullable
              as double,
      cardImage: cardImage == freezed
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CardStateCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$CardStateCopyWith(
          _CardState value, $Res Function(_CardState) then) =
      __$CardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CardModel> cards,
      String cardName,
      String cardNumberError,
      String monthError,
      String yearError,
      bool isEnabled,
      double gradientValue,
      String cardImage});
}

/// @nodoc
class __$CardStateCopyWithImpl<$Res> extends _$CardStateCopyWithImpl<$Res>
    implements _$CardStateCopyWith<$Res> {
  __$CardStateCopyWithImpl(_CardState _value, $Res Function(_CardState) _then)
      : super(_value, (v) => _then(v as _CardState));

  @override
  _CardState get _value => super._value as _CardState;

  @override
  $Res call({
    Object? cards = freezed,
    Object? cardName = freezed,
    Object? cardNumberError = freezed,
    Object? monthError = freezed,
    Object? yearError = freezed,
    Object? isEnabled = freezed,
    Object? gradientValue = freezed,
    Object? cardImage = freezed,
  }) {
    return _then(_CardState(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      cardName: cardName == freezed
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumberError: cardNumberError == freezed
          ? _value.cardNumberError
          : cardNumberError // ignore: cast_nullable_to_non_nullable
              as String,
      monthError: monthError == freezed
          ? _value.monthError
          : monthError // ignore: cast_nullable_to_non_nullable
              as String,
      yearError: yearError == freezed
          ? _value.yearError
          : yearError // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      gradientValue: gradientValue == freezed
          ? _value.gradientValue
          : gradientValue // ignore: cast_nullable_to_non_nullable
              as double,
      cardImage: cardImage == freezed
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CardState implements _CardState {
  const _$_CardState(
      {this.cards = const [],
      this.cardName = '',
      this.cardNumberError = '',
      this.monthError = '',
      this.yearError = '',
      this.isEnabled = true,
      this.gradientValue = 1.0,
      this.cardImage = ''});

  @JsonKey()
  @override
  final List<CardModel> cards;
  @JsonKey()
  @override
  final String cardName;
  @JsonKey()
  @override
  final String cardNumberError;
  @JsonKey()
  @override
  final String monthError;
  @JsonKey()
  @override
  final String yearError;
  @JsonKey()
  @override
  final bool isEnabled;
  @JsonKey()
  @override
  final double gradientValue;
  @JsonKey()
  @override
  final String cardImage;

  @override
  String toString() {
    return 'CardState(cards: $cards, cardName: $cardName, cardNumberError: $cardNumberError, monthError: $monthError, yearError: $yearError, isEnabled: $isEnabled, gradientValue: $gradientValue, cardImage: $cardImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardState &&
            const DeepCollectionEquality().equals(other.cards, cards) &&
            const DeepCollectionEquality().equals(other.cardName, cardName) &&
            const DeepCollectionEquality()
                .equals(other.cardNumberError, cardNumberError) &&
            const DeepCollectionEquality()
                .equals(other.monthError, monthError) &&
            const DeepCollectionEquality().equals(other.yearError, yearError) &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
            const DeepCollectionEquality()
                .equals(other.gradientValue, gradientValue) &&
            const DeepCollectionEquality().equals(other.cardImage, cardImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cards),
      const DeepCollectionEquality().hash(cardName),
      const DeepCollectionEquality().hash(cardNumberError),
      const DeepCollectionEquality().hash(monthError),
      const DeepCollectionEquality().hash(yearError),
      const DeepCollectionEquality().hash(isEnabled),
      const DeepCollectionEquality().hash(gradientValue),
      const DeepCollectionEquality().hash(cardImage));

  @JsonKey(ignore: true)
  @override
  _$CardStateCopyWith<_CardState> get copyWith =>
      __$CardStateCopyWithImpl<_CardState>(this, _$identity);
}

abstract class _CardState implements CardState {
  const factory _CardState(
      {List<CardModel> cards,
      String cardName,
      String cardNumberError,
      String monthError,
      String yearError,
      bool isEnabled,
      double gradientValue,
      String cardImage}) = _$_CardState;

  @override
  List<CardModel> get cards;
  @override
  String get cardName;
  @override
  String get cardNumberError;
  @override
  String get monthError;
  @override
  String get yearError;
  @override
  bool get isEnabled;
  @override
  double get gradientValue;
  @override
  String get cardImage;
  @override
  @JsonKey(ignore: true)
  _$CardStateCopyWith<_CardState> get copyWith =>
      throw _privateConstructorUsedError;
}
