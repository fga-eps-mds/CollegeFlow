// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'load_review_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadReviewListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Review> reviewList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReviewListStateCopyWith<$Res> {
  factory $LoadReviewListStateCopyWith(
          LoadReviewListState value, $Res Function(LoadReviewListState) then) =
      _$LoadReviewListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadReviewListStateCopyWithImpl<$Res>
    implements $LoadReviewListStateCopyWith<$Res> {
  _$LoadReviewListStateCopyWithImpl(this._value, this._then);

  final LoadReviewListState _value;
  // ignore: unused_field
  final $Res Function(LoadReviewListState) _then;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$LoadReviewListStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'LoadReviewListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Review> reviewList) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoadReviewListState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$LoadReviewListStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoadReviewListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Review> reviewList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoadReviewListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_loadedCopyWith<$Res> {
  factory _$$_loadedCopyWith(_$_loaded value, $Res Function(_$_loaded) then) =
      __$$_loadedCopyWithImpl<$Res>;
  $Res call({List<Review> reviewList});
}

/// @nodoc
class __$$_loadedCopyWithImpl<$Res>
    extends _$LoadReviewListStateCopyWithImpl<$Res>
    implements _$$_loadedCopyWith<$Res> {
  __$$_loadedCopyWithImpl(_$_loaded _value, $Res Function(_$_loaded) _then)
      : super(_value, (v) => _then(v as _$_loaded));

  @override
  _$_loaded get _value => super._value as _$_loaded;

  @override
  $Res call({
    Object? reviewList = freezed,
  }) {
    return _then(_$_loaded(
      reviewList: reviewList == freezed
          ? _value._reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$_loaded implements _loaded {
  const _$_loaded({required final List<Review> reviewList})
      : _reviewList = reviewList;

  final List<Review> _reviewList;
  @override
  List<Review> get reviewList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewList);
  }

  @override
  String toString() {
    return 'LoadReviewListState.loaded(reviewList: $reviewList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loaded &&
            const DeepCollectionEquality()
                .equals(other._reviewList, _reviewList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviewList));

  @JsonKey(ignore: true)
  @override
  _$$_loadedCopyWith<_$_loaded> get copyWith =>
      __$$_loadedCopyWithImpl<_$_loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Review> reviewList) loaded,
  }) {
    return loaded(reviewList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
  }) {
    return loaded?.call(reviewList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Review> reviewList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reviewList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements LoadReviewListState {
  const factory _loaded({required final List<Review> reviewList}) = _$_loaded;

  List<Review> get reviewList;
  @JsonKey(ignore: true)
  _$$_loadedCopyWith<_$_loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadReviewListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) loadList,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? loadList,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? loadList,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReviewListEventCopyWith<$Res> {
  factory $LoadReviewListEventCopyWith(
          LoadReviewListEvent value, $Res Function(LoadReviewListEvent) then) =
      _$LoadReviewListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadReviewListEventCopyWithImpl<$Res>
    implements $LoadReviewListEventCopyWith<$Res> {
  _$LoadReviewListEventCopyWithImpl(this._value, this._then);

  final LoadReviewListEvent _value;
  // ignore: unused_field
  final $Res Function(LoadReviewListEvent) _then;
}

/// @nodoc
abstract class _$$_LoadListCopyWith<$Res> {
  factory _$$_LoadListCopyWith(
          _$_LoadList value, $Res Function(_$_LoadList) then) =
      __$$_LoadListCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$$_LoadListCopyWithImpl<$Res>
    extends _$LoadReviewListEventCopyWithImpl<$Res>
    implements _$$_LoadListCopyWith<$Res> {
  __$$_LoadListCopyWithImpl(
      _$_LoadList _value, $Res Function(_$_LoadList) _then)
      : super(_value, (v) => _then(v as _$_LoadList));

  @override
  _$_LoadList get _value => super._value as _$_LoadList;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_LoadList(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadList implements _LoadList {
  const _$_LoadList({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'LoadReviewListEvent.loadList(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadList &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_LoadListCopyWith<_$_LoadList> get copyWith =>
      __$$_LoadListCopyWithImpl<_$_LoadList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) loadList,
    required TResult Function() reset,
  }) {
    return loadList(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? loadList,
    TResult Function()? reset,
  }) {
    return loadList?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? loadList,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_Reset value) reset,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_Reset value)? reset,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class _LoadList implements LoadReviewListEvent {
  const factory _LoadList({required final String code}) = _$_LoadList;

  String get code;
  @JsonKey(ignore: true)
  _$$_LoadListCopyWith<_$_LoadList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$LoadReviewListEventCopyWithImpl<$Res>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, (v) => _then(v as _$_Reset));

  @override
  _$_Reset get _value => super._value as _$_Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'LoadReviewListEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) loadList,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? loadList,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? loadList,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements LoadReviewListEvent {
  const factory _Reset() = _$_Reset;
}
