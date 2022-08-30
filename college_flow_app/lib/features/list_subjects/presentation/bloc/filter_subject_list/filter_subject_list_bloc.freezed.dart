// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_subject_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noResults,
    required TResult Function() loading,
    required TResult Function(List<Subject> subjects) filteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Loading value) loading,
    required TResult Function(_filteredList value) filteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterListStateCopyWith<$Res> {
  factory $FilterListStateCopyWith(
          FilterListState value, $Res Function(FilterListState) then) =
      _$FilterListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterListStateCopyWithImpl<$Res>
    implements $FilterListStateCopyWith<$Res> {
  _$FilterListStateCopyWithImpl(this._value, this._then);

  final FilterListState _value;
  // ignore: unused_field
  final $Res Function(FilterListState) _then;
}

/// @nodoc
abstract class _$$_NoResultsCopyWith<$Res> {
  factory _$$_NoResultsCopyWith(
          _$_NoResults value, $Res Function(_$_NoResults) then) =
      __$$_NoResultsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoResultsCopyWithImpl<$Res>
    extends _$FilterListStateCopyWithImpl<$Res>
    implements _$$_NoResultsCopyWith<$Res> {
  __$$_NoResultsCopyWithImpl(
      _$_NoResults _value, $Res Function(_$_NoResults) _then)
      : super(_value, (v) => _then(v as _$_NoResults));

  @override
  _$_NoResults get _value => super._value as _$_NoResults;
}

/// @nodoc

class _$_NoResults implements _NoResults {
  const _$_NoResults();

  @override
  String toString() {
    return 'FilterListState.noResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noResults,
    required TResult Function() loading,
    required TResult Function(List<Subject> subjects) filteredList,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Loading value) loading,
    required TResult Function(_filteredList value) filteredList,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class _NoResults implements FilterListState {
  const factory _NoResults() = _$_NoResults;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$FilterListStateCopyWithImpl<$Res>
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
    return 'FilterListState.loading()';
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
    required TResult Function() noResults,
    required TResult Function() loading,
    required TResult Function(List<Subject> subjects) filteredList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
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
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Loading value) loading,
    required TResult Function(_filteredList value) filteredList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FilterListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_filteredListCopyWith<$Res> {
  factory _$$_filteredListCopyWith(
          _$_filteredList value, $Res Function(_$_filteredList) then) =
      __$$_filteredListCopyWithImpl<$Res>;
  $Res call({List<Subject> subjects});
}

/// @nodoc
class __$$_filteredListCopyWithImpl<$Res>
    extends _$FilterListStateCopyWithImpl<$Res>
    implements _$$_filteredListCopyWith<$Res> {
  __$$_filteredListCopyWithImpl(
      _$_filteredList _value, $Res Function(_$_filteredList) _then)
      : super(_value, (v) => _then(v as _$_filteredList));

  @override
  _$_filteredList get _value => super._value as _$_filteredList;

  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_$_filteredList(
      subjects: subjects == freezed
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$_filteredList implements _filteredList {
  const _$_filteredList({required final List<Subject> subjects})
      : _subjects = subjects;

  final List<Subject> _subjects;
  @override
  List<Subject> get subjects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'FilterListState.filteredList(subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_filteredList &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  _$$_filteredListCopyWith<_$_filteredList> get copyWith =>
      __$$_filteredListCopyWithImpl<_$_filteredList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noResults,
    required TResult Function() loading,
    required TResult Function(List<Subject> subjects) filteredList,
  }) {
    return filteredList(subjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
  }) {
    return filteredList?.call(subjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noResults,
    TResult Function()? loading,
    TResult Function(List<Subject> subjects)? filteredList,
    required TResult orElse(),
  }) {
    if (filteredList != null) {
      return filteredList(subjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Loading value) loading,
    required TResult Function(_filteredList value) filteredList,
  }) {
    return filteredList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
  }) {
    return filteredList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Loading value)? loading,
    TResult Function(_filteredList value)? filteredList,
    required TResult orElse(),
  }) {
    if (filteredList != null) {
      return filteredList(this);
    }
    return orElse();
  }
}

abstract class _filteredList implements FilterListState {
  const factory _filteredList({required final List<Subject> subjects}) =
      _$_filteredList;

  List<Subject> get subjects;
  @JsonKey(ignore: true)
  _$$_filteredListCopyWith<_$_filteredList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterListEvent {
  String get query => throw _privateConstructorUsedError;
  List<Subject> get subjectList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Subject> subjectList)
        filterSubjectList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, List<Subject> subjectList)?
        filterSubjectList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Subject> subjectList)?
        filterSubjectList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterSubjectList value) filterSubjectList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilterSubjectList value)? filterSubjectList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterSubjectList value)? filterSubjectList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterListEventCopyWith<FilterListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterListEventCopyWith<$Res> {
  factory $FilterListEventCopyWith(
          FilterListEvent value, $Res Function(FilterListEvent) then) =
      _$FilterListEventCopyWithImpl<$Res>;
  $Res call({String query, List<Subject> subjectList});
}

/// @nodoc
class _$FilterListEventCopyWithImpl<$Res>
    implements $FilterListEventCopyWith<$Res> {
  _$FilterListEventCopyWithImpl(this._value, this._then);

  final FilterListEvent _value;
  // ignore: unused_field
  final $Res Function(FilterListEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? subjectList = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      subjectList: subjectList == freezed
          ? _value.subjectList
          : subjectList // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterSubjectListCopyWith<$Res>
    implements $FilterListEventCopyWith<$Res> {
  factory _$$_FilterSubjectListCopyWith(_$_FilterSubjectList value,
          $Res Function(_$_FilterSubjectList) then) =
      __$$_FilterSubjectListCopyWithImpl<$Res>;
  @override
  $Res call({String query, List<Subject> subjectList});
}

/// @nodoc
class __$$_FilterSubjectListCopyWithImpl<$Res>
    extends _$FilterListEventCopyWithImpl<$Res>
    implements _$$_FilterSubjectListCopyWith<$Res> {
  __$$_FilterSubjectListCopyWithImpl(
      _$_FilterSubjectList _value, $Res Function(_$_FilterSubjectList) _then)
      : super(_value, (v) => _then(v as _$_FilterSubjectList));

  @override
  _$_FilterSubjectList get _value => super._value as _$_FilterSubjectList;

  @override
  $Res call({
    Object? query = freezed,
    Object? subjectList = freezed,
  }) {
    return _then(_$_FilterSubjectList(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      subjectList: subjectList == freezed
          ? _value._subjectList
          : subjectList // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$_FilterSubjectList implements _FilterSubjectList {
  const _$_FilterSubjectList(
      {required this.query, required final List<Subject> subjectList})
      : _subjectList = subjectList;

  @override
  final String query;
  final List<Subject> _subjectList;
  @override
  List<Subject> get subjectList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjectList);
  }

  @override
  String toString() {
    return 'FilterListEvent.filterSubjectList(query: $query, subjectList: $subjectList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterSubjectList &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other._subjectList, _subjectList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(_subjectList));

  @JsonKey(ignore: true)
  @override
  _$$_FilterSubjectListCopyWith<_$_FilterSubjectList> get copyWith =>
      __$$_FilterSubjectListCopyWithImpl<_$_FilterSubjectList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Subject> subjectList)
        filterSubjectList,
  }) {
    return filterSubjectList(query, subjectList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, List<Subject> subjectList)?
        filterSubjectList,
  }) {
    return filterSubjectList?.call(query, subjectList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Subject> subjectList)?
        filterSubjectList,
    required TResult orElse(),
  }) {
    if (filterSubjectList != null) {
      return filterSubjectList(query, subjectList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterSubjectList value) filterSubjectList,
  }) {
    return filterSubjectList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilterSubjectList value)? filterSubjectList,
  }) {
    return filterSubjectList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterSubjectList value)? filterSubjectList,
    required TResult orElse(),
  }) {
    if (filterSubjectList != null) {
      return filterSubjectList(this);
    }
    return orElse();
  }
}

abstract class _FilterSubjectList implements FilterListEvent {
  const factory _FilterSubjectList(
      {required final String query,
      required final List<Subject> subjectList}) = _$_FilterSubjectList;

  @override
  String get query;
  @override
  List<Subject> get subjectList;
  @override
  @JsonKey(ignore: true)
  _$$_FilterSubjectListCopyWith<_$_FilterSubjectList> get copyWith =>
      throw _privateConstructorUsedError;
}
