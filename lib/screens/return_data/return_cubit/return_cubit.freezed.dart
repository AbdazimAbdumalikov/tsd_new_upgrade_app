// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReturnState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() activeState,
    required TResult Function() passiveState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? activeState,
    TResult? Function()? passiveState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? activeState,
    TResult Function()? passiveState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ActiveState value) activeState,
    required TResult Function(_PassiveState value) passiveState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ActiveState value)? activeState,
    TResult? Function(_PassiveState value)? passiveState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ActiveState value)? activeState,
    TResult Function(_PassiveState value)? passiveState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnStateCopyWith<$Res> {
  factory $ReturnStateCopyWith(
          ReturnState value, $Res Function(ReturnState) then) =
      _$ReturnStateCopyWithImpl<$Res, ReturnState>;
}

/// @nodoc
class _$ReturnStateCopyWithImpl<$Res, $Val extends ReturnState>
    implements $ReturnStateCopyWith<$Res> {
  _$ReturnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ReturnState.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() activeState,
    required TResult Function() passiveState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? activeState,
    TResult? Function()? passiveState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? activeState,
    TResult Function()? passiveState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ActiveState value) activeState,
    required TResult Function(_PassiveState value) passiveState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ActiveState value)? activeState,
    TResult? Function(_PassiveState value)? passiveState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ActiveState value)? activeState,
    TResult Function(_PassiveState value)? passiveState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ReturnState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ReturnState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() activeState,
    required TResult Function() passiveState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? activeState,
    TResult? Function()? passiveState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? activeState,
    TResult Function()? passiveState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ActiveState value) activeState,
    required TResult Function(_PassiveState value) passiveState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ActiveState value)? activeState,
    TResult? Function(_PassiveState value)? passiveState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ActiveState value)? activeState,
    TResult Function(_PassiveState value)? passiveState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ReturnState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ActiveStateImplCopyWith<$Res> {
  factory _$$ActiveStateImplCopyWith(
          _$ActiveStateImpl value, $Res Function(_$ActiveStateImpl) then) =
      __$$ActiveStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveStateImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$ActiveStateImpl>
    implements _$$ActiveStateImplCopyWith<$Res> {
  __$$ActiveStateImplCopyWithImpl(
      _$ActiveStateImpl _value, $Res Function(_$ActiveStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActiveStateImpl implements _ActiveState {
  const _$ActiveStateImpl();

  @override
  String toString() {
    return 'ReturnState.activeState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() activeState,
    required TResult Function() passiveState,
  }) {
    return activeState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? activeState,
    TResult? Function()? passiveState,
  }) {
    return activeState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? activeState,
    TResult Function()? passiveState,
    required TResult orElse(),
  }) {
    if (activeState != null) {
      return activeState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ActiveState value) activeState,
    required TResult Function(_PassiveState value) passiveState,
  }) {
    return activeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ActiveState value)? activeState,
    TResult? Function(_PassiveState value)? passiveState,
  }) {
    return activeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ActiveState value)? activeState,
    TResult Function(_PassiveState value)? passiveState,
    required TResult orElse(),
  }) {
    if (activeState != null) {
      return activeState(this);
    }
    return orElse();
  }
}

abstract class _ActiveState implements ReturnState {
  const factory _ActiveState() = _$ActiveStateImpl;
}

/// @nodoc
abstract class _$$PassiveStateImplCopyWith<$Res> {
  factory _$$PassiveStateImplCopyWith(
          _$PassiveStateImpl value, $Res Function(_$PassiveStateImpl) then) =
      __$$PassiveStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PassiveStateImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$PassiveStateImpl>
    implements _$$PassiveStateImplCopyWith<$Res> {
  __$$PassiveStateImplCopyWithImpl(
      _$PassiveStateImpl _value, $Res Function(_$PassiveStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PassiveStateImpl implements _PassiveState {
  const _$PassiveStateImpl();

  @override
  String toString() {
    return 'ReturnState.passiveState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PassiveStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() activeState,
    required TResult Function() passiveState,
  }) {
    return passiveState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? activeState,
    TResult? Function()? passiveState,
  }) {
    return passiveState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? activeState,
    TResult Function()? passiveState,
    required TResult orElse(),
  }) {
    if (passiveState != null) {
      return passiveState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ActiveState value) activeState,
    required TResult Function(_PassiveState value) passiveState,
  }) {
    return passiveState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ActiveState value)? activeState,
    TResult? Function(_PassiveState value)? passiveState,
  }) {
    return passiveState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ActiveState value)? activeState,
    TResult Function(_PassiveState value)? passiveState,
    required TResult orElse(),
  }) {
    if (passiveState != null) {
      return passiveState(this);
    }
    return orElse();
  }
}

abstract class _PassiveState implements ReturnState {
  const factory _PassiveState() = _$PassiveStateImpl;
}
