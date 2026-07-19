// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BannerModel {

 int get id;@JsonKey(name: 'image_url') String get imageUrl;@JsonKey(name: 'redirect_type') BannerRedirectType get redirectType;@JsonKey(name: 'redirect_id') int? get redirectId;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'display_order') int get displayOrder;
/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerModelCopyWith<BannerModel> get copyWith => _$BannerModelCopyWithImpl<BannerModel>(this as BannerModel, _$identity);

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.redirectType, redirectType) || other.redirectType == redirectType)&&(identical(other.redirectId, redirectId) || other.redirectId == redirectId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,redirectType,redirectId,isActive,displayOrder);

@override
String toString() {
  return 'BannerModel(id: $id, imageUrl: $imageUrl, redirectType: $redirectType, redirectId: $redirectId, isActive: $isActive, displayOrder: $displayOrder)';
}


}

/// @nodoc
abstract mixin class $BannerModelCopyWith<$Res>  {
  factory $BannerModelCopyWith(BannerModel value, $Res Function(BannerModel) _then) = _$BannerModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'redirect_type') BannerRedirectType redirectType,@JsonKey(name: 'redirect_id') int? redirectId,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'display_order') int displayOrder
});




}
/// @nodoc
class _$BannerModelCopyWithImpl<$Res>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._self, this._then);

  final BannerModel _self;
  final $Res Function(BannerModel) _then;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? redirectType = null,Object? redirectId = freezed,Object? isActive = null,Object? displayOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,redirectType: null == redirectType ? _self.redirectType : redirectType // ignore: cast_nullable_to_non_nullable
as BannerRedirectType,redirectId: freezed == redirectId ? _self.redirectId : redirectId // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,displayOrder: null == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerModel].
extension BannerModelPatterns on BannerModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerModel value)  $default,){
final _that = this;
switch (_that) {
case _BannerModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'redirect_type')  BannerRedirectType redirectType, @JsonKey(name: 'redirect_id')  int? redirectId, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'display_order')  int displayOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.redirectType,_that.redirectId,_that.isActive,_that.displayOrder);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'redirect_type')  BannerRedirectType redirectType, @JsonKey(name: 'redirect_id')  int? redirectId, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'display_order')  int displayOrder)  $default,) {final _that = this;
switch (_that) {
case _BannerModel():
return $default(_that.id,_that.imageUrl,_that.redirectType,_that.redirectId,_that.isActive,_that.displayOrder);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'redirect_type')  BannerRedirectType redirectType, @JsonKey(name: 'redirect_id')  int? redirectId, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'display_order')  int displayOrder)?  $default,) {final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.redirectType,_that.redirectId,_that.isActive,_that.displayOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerModel implements BannerModel {
  const _BannerModel({required this.id, @JsonKey(name: 'image_url') required this.imageUrl, @JsonKey(name: 'redirect_type') required this.redirectType, @JsonKey(name: 'redirect_id') this.redirectId, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'display_order') required this.displayOrder});
  factory _BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey(name: 'redirect_type') final  BannerRedirectType redirectType;
@override@JsonKey(name: 'redirect_id') final  int? redirectId;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'display_order') final  int displayOrder;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerModelCopyWith<_BannerModel> get copyWith => __$BannerModelCopyWithImpl<_BannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.redirectType, redirectType) || other.redirectType == redirectType)&&(identical(other.redirectId, redirectId) || other.redirectId == redirectId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,redirectType,redirectId,isActive,displayOrder);

@override
String toString() {
  return 'BannerModel(id: $id, imageUrl: $imageUrl, redirectType: $redirectType, redirectId: $redirectId, isActive: $isActive, displayOrder: $displayOrder)';
}


}

/// @nodoc
abstract mixin class _$BannerModelCopyWith<$Res> implements $BannerModelCopyWith<$Res> {
  factory _$BannerModelCopyWith(_BannerModel value, $Res Function(_BannerModel) _then) = __$BannerModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'redirect_type') BannerRedirectType redirectType,@JsonKey(name: 'redirect_id') int? redirectId,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'display_order') int displayOrder
});




}
/// @nodoc
class __$BannerModelCopyWithImpl<$Res>
    implements _$BannerModelCopyWith<$Res> {
  __$BannerModelCopyWithImpl(this._self, this._then);

  final _BannerModel _self;
  final $Res Function(_BannerModel) _then;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? redirectType = null,Object? redirectId = freezed,Object? isActive = null,Object? displayOrder = null,}) {
  return _then(_BannerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,redirectType: null == redirectType ? _self.redirectType : redirectType // ignore: cast_nullable_to_non_nullable
as BannerRedirectType,redirectId: freezed == redirectId ? _self.redirectId : redirectId // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,displayOrder: null == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
