// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anime_convention/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_voice_actor.var.gql.g.dart';

abstract class GFetchVoiceActorVars
    implements Built<GFetchVoiceActorVars, GFetchVoiceActorVarsBuilder> {
  GFetchVoiceActorVars._();

  factory GFetchVoiceActorVars(
          [void Function(GFetchVoiceActorVarsBuilder b) updates]) =
      _$GFetchVoiceActorVars;

  String? get search;
  static Serializer<GFetchVoiceActorVars> get serializer =>
      _$gFetchVoiceActorVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorVars.serializer,
        json,
      );
}
