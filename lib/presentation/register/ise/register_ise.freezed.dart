// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_ise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterIntent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterIntent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterIntent()';
}


}

/// @nodoc
class $RegisterIntentCopyWith<$Res>  {
$RegisterIntentCopyWith(RegisterIntent _, $Res Function(RegisterIntent) __);
}


/// @nodoc


class _BackPressed implements RegisterIntent {
  const _BackPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterIntent.backPressed()';
}


}




/// @nodoc


class _FirstNameChanged implements RegisterIntent {
  const _FirstNameChanged(this.firstName);
  

 final  String firstName;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith => __$FirstNameChangedCopyWithImpl<_FirstNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirstNameChanged&&(identical(other.firstName, firstName) || other.firstName == firstName));
}


@override
int get hashCode => Object.hash(runtimeType,firstName);

@override
String toString() {
  return 'RegisterIntent.firstNameChanged(firstName: $firstName)';
}


}

/// @nodoc
abstract mixin class _$FirstNameChangedCopyWith<$Res> implements $RegisterIntentCopyWith<$Res> {
  factory _$FirstNameChangedCopyWith(_FirstNameChanged value, $Res Function(_FirstNameChanged) _then) = __$FirstNameChangedCopyWithImpl;
@useResult
$Res call({
 String firstName
});




}
/// @nodoc
class __$FirstNameChangedCopyWithImpl<$Res>
    implements _$FirstNameChangedCopyWith<$Res> {
  __$FirstNameChangedCopyWithImpl(this._self, this._then);

  final _FirstNameChanged _self;
  final $Res Function(_FirstNameChanged) _then;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? firstName = null,}) {
  return _then(_FirstNameChanged(
null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LastNameChanged implements RegisterIntent {
  const _LastNameChanged(this.lastName);
  

 final  String lastName;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastNameChangedCopyWith<_LastNameChanged> get copyWith => __$LastNameChangedCopyWithImpl<_LastNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastNameChanged&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode => Object.hash(runtimeType,lastName);

@override
String toString() {
  return 'RegisterIntent.lastNameChanged(lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$LastNameChangedCopyWith<$Res> implements $RegisterIntentCopyWith<$Res> {
  factory _$LastNameChangedCopyWith(_LastNameChanged value, $Res Function(_LastNameChanged) _then) = __$LastNameChangedCopyWithImpl;
@useResult
$Res call({
 String lastName
});




}
/// @nodoc
class __$LastNameChangedCopyWithImpl<$Res>
    implements _$LastNameChangedCopyWith<$Res> {
  __$LastNameChangedCopyWithImpl(this._self, this._then);

  final _LastNameChanged _self;
  final $Res Function(_LastNameChanged) _then;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lastName = null,}) {
  return _then(_LastNameChanged(
null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmailChanged implements RegisterIntent {
  const _EmailChanged(this.email);
  

 final  String email;

/// Create a copy of RegisterIntent
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
  return 'RegisterIntent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res> implements $RegisterIntentCopyWith<$Res> {
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

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordChanged implements RegisterIntent {
  const _PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of RegisterIntent
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
  return 'RegisterIntent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res> implements $RegisterIntentCopyWith<$Res> {
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

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TogglePasswordVisibility implements RegisterIntent {
  const _TogglePasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TogglePasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterIntent.togglePasswordVisibility()';
}


}




/// @nodoc


class _RepeatedPasswordChanged implements RegisterIntent {
  const _RepeatedPasswordChanged(this.repeatedPassword);
  

 final  String repeatedPassword;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepeatedPasswordChangedCopyWith<_RepeatedPasswordChanged> get copyWith => __$RepeatedPasswordChangedCopyWithImpl<_RepeatedPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepeatedPasswordChanged&&(identical(other.repeatedPassword, repeatedPassword) || other.repeatedPassword == repeatedPassword));
}


@override
int get hashCode => Object.hash(runtimeType,repeatedPassword);

@override
String toString() {
  return 'RegisterIntent.repeatedPasswordChanged(repeatedPassword: $repeatedPassword)';
}


}

/// @nodoc
abstract mixin class _$RepeatedPasswordChangedCopyWith<$Res> implements $RegisterIntentCopyWith<$Res> {
  factory _$RepeatedPasswordChangedCopyWith(_RepeatedPasswordChanged value, $Res Function(_RepeatedPasswordChanged) _then) = __$RepeatedPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String repeatedPassword
});




}
/// @nodoc
class __$RepeatedPasswordChangedCopyWithImpl<$Res>
    implements _$RepeatedPasswordChangedCopyWith<$Res> {
  __$RepeatedPasswordChangedCopyWithImpl(this._self, this._then);

  final _RepeatedPasswordChanged _self;
  final $Res Function(_RepeatedPasswordChanged) _then;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? repeatedPassword = null,}) {
  return _then(_RepeatedPasswordChanged(
null == repeatedPassword ? _self.repeatedPassword : repeatedPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleRepeatedPasswordVisibility implements RegisterIntent {
  const _ToggleRepeatedPasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleRepeatedPasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterIntent.toggleRepeatedPasswordVisibility()';
}


}




/// @nodoc


class _RegisterPressed implements RegisterIntent {
  const _RegisterPressed({required this.firstName, required this.lastName, required this.email, required this.password, required this.repeatedPassword});
  

 final  String firstName;
 final  String lastName;
 final  String email;
 final  String password;
 final  String repeatedPassword;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterPressedCopyWith<_RegisterPressed> get copyWith => __$RegisterPressedCopyWithImpl<_RegisterPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterPressed&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatedPassword, repeatedPassword) || other.repeatedPassword == repeatedPassword));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,password,repeatedPassword);

@override
String toString() {
  return 'RegisterIntent.registerPressed(firstName: $firstName, lastName: $lastName, email: $email, password: $password, repeatedPassword: $repeatedPassword)';
}


}

/// @nodoc
abstract mixin class _$RegisterPressedCopyWith<$Res> implements $RegisterIntentCopyWith<$Res> {
  factory _$RegisterPressedCopyWith(_RegisterPressed value, $Res Function(_RegisterPressed) _then) = __$RegisterPressedCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String email, String password, String repeatedPassword
});




}
/// @nodoc
class __$RegisterPressedCopyWithImpl<$Res>
    implements _$RegisterPressedCopyWith<$Res> {
  __$RegisterPressedCopyWithImpl(this._self, this._then);

  final _RegisterPressed _self;
  final $Res Function(_RegisterPressed) _then;

/// Create a copy of RegisterIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? password = null,Object? repeatedPassword = null,}) {
  return _then(_RegisterPressed(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,repeatedPassword: null == repeatedPassword ? _self.repeatedPassword : repeatedPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegisterEvent {

 Exception get e;
/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterEventCopyWith<RegisterEvent> get copyWith => _$RegisterEventCopyWithImpl<RegisterEvent>(this as RegisterEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'RegisterEvent(e: $e)';
}


}

/// @nodoc
abstract mixin class $RegisterEventCopyWith<$Res>  {
  factory $RegisterEventCopyWith(RegisterEvent value, $Res Function(RegisterEvent) _then) = _$RegisterEventCopyWithImpl;
@useResult
$Res call({
 Exception e
});




}
/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._self, this._then);

  final RegisterEvent _self;
  final $Res Function(RegisterEvent) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? e = null,}) {
  return _then(_self.copyWith(
e: null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}

}


/// @nodoc


class _ShowError implements RegisterEvent {
  const _ShowError(this.e);
  

@override final  Exception e;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.showError(e: $e)';
}


}

/// @nodoc
abstract mixin class _$ShowErrorCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(_ShowError(
null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
