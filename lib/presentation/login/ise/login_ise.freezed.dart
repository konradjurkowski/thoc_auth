// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginIntent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginIntent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginIntent()';
}


}

/// @nodoc
class $LoginIntentCopyWith<$Res>  {
$LoginIntentCopyWith(LoginIntent _, $Res Function(LoginIntent) __);
}


/// @nodoc


class _EmailChanged implements LoginIntent {
  const _EmailChanged(this.email);
  

 final  String email;

/// Create a copy of LoginIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailChangedCopyWith<_EmailChanged> get copyWith => __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginIntent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res> implements $LoginIntentCopyWith<$Res> {
  factory _$EmailChangedCopyWith(_EmailChanged value, $Res Function(_EmailChanged) _then) = __$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(this._self, this._then);

  final _EmailChanged _self;
  final $Res Function(_EmailChanged) _then;

/// Create a copy of LoginIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordChanged implements LoginIntent {
  const _PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of LoginIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'LoginIntent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res> implements $LoginIntentCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) _then) = __$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

/// Create a copy of LoginIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TogglePasswordVisibility implements LoginIntent {
  const _TogglePasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TogglePasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginIntent.togglePasswordVisibility()';
}


}




/// @nodoc


class _ForgotPasswordPressed implements LoginIntent {
  const _ForgotPasswordPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginIntent.forgotPasswordPressed()';
}


}




/// @nodoc


class _CreateAccountPressed implements LoginIntent {
  const _CreateAccountPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginIntent.createAccountPressed()';
}


}




/// @nodoc


class _LoginPressed implements LoginIntent {
  const _LoginPressed({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of LoginIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPressedCopyWith<_LoginPressed> get copyWith => __$LoginPressedCopyWithImpl<_LoginPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPressed&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginIntent.loginPressed(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginPressedCopyWith<$Res> implements $LoginIntentCopyWith<$Res> {
  factory _$LoginPressedCopyWith(_LoginPressed value, $Res Function(_LoginPressed) _then) = __$LoginPressedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginPressedCopyWithImpl<$Res>
    implements _$LoginPressedCopyWith<$Res> {
  __$LoginPressedCopyWithImpl(this._self, this._then);

  final _LoginPressed _self;
  final $Res Function(_LoginPressed) _then;

/// Create a copy of LoginIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginPressed(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LoginEvent {

 Exception get e;
/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEventCopyWith<LoginEvent> get copyWith => _$LoginEventCopyWithImpl<LoginEvent>(this as LoginEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'LoginEvent(e: $e)';
}


}

/// @nodoc
abstract mixin class $LoginEventCopyWith<$Res>  {
  factory $LoginEventCopyWith(LoginEvent value, $Res Function(LoginEvent) _then) = _$LoginEventCopyWithImpl;
@useResult
$Res call({
 Exception e
});




}
/// @nodoc
class _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._self, this._then);

  final LoginEvent _self;
  final $Res Function(LoginEvent) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? e = null,}) {
  return _then(_self.copyWith(
e: null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}

}


/// @nodoc


class _ShowError implements LoginEvent {
  const _ShowError(this.e);
  

@override final  Exception e;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowErrorCopyWith<_ShowError> get copyWith => __$ShowErrorCopyWithImpl<_ShowError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowError&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'LoginEvent.showError(e: $e)';
}


}

/// @nodoc
abstract mixin class _$ShowErrorCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$ShowErrorCopyWith(_ShowError value, $Res Function(_ShowError) _then) = __$ShowErrorCopyWithImpl;
@override @useResult
$Res call({
 Exception e
});




}
/// @nodoc
class __$ShowErrorCopyWithImpl<$Res>
    implements _$ShowErrorCopyWith<$Res> {
  __$ShowErrorCopyWithImpl(this._self, this._then);

  final _ShowError _self;
  final $Res Function(_ShowError) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(_ShowError(
null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
