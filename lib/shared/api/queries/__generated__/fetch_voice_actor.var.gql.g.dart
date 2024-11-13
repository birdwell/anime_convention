// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_voice_actor.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchVoiceActorVars> _$gFetchVoiceActorVarsSerializer =
    new _$GFetchVoiceActorVarsSerializer();

class _$GFetchVoiceActorVarsSerializer
    implements StructuredSerializer<GFetchVoiceActorVars> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorVars,
    _$GFetchVoiceActorVars
  ];
  @override
  final String wireName = 'GFetchVoiceActorVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchVoiceActorVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchVoiceActorVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorVars extends GFetchVoiceActorVars {
  @override
  final String? search;

  factory _$GFetchVoiceActorVars(
          [void Function(GFetchVoiceActorVarsBuilder)? updates]) =>
      (new GFetchVoiceActorVarsBuilder()..update(updates))._build();

  _$GFetchVoiceActorVars._({this.search}) : super._();

  @override
  GFetchVoiceActorVars rebuild(
          void Function(GFetchVoiceActorVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorVarsBuilder toBuilder() =>
      new GFetchVoiceActorVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorVars && search == other.search;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchVoiceActorVars')
          ..add('search', search))
        .toString();
  }
}

class GFetchVoiceActorVarsBuilder
    implements Builder<GFetchVoiceActorVars, GFetchVoiceActorVarsBuilder> {
  _$GFetchVoiceActorVars? _$v;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  GFetchVoiceActorVarsBuilder();

  GFetchVoiceActorVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorVars;
  }

  @override
  void update(void Function(GFetchVoiceActorVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorVars build() => _build();

  _$GFetchVoiceActorVars _build() {
    final _$result = _$v ?? new _$GFetchVoiceActorVars._(search: search);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
