// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anime_convention/__generated__/serializers.gql.dart' as _i6;
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.ast.gql.dart'
    as _i5;
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart'
    as _i2;
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'fetch_voice_actor.req.gql.g.dart';

abstract class GFetchVoiceActorReq
    implements
        Built<GFetchVoiceActorReq, GFetchVoiceActorReqBuilder>,
        _i1
        .OperationRequest<_i2.GFetchVoiceActorData, _i3.GFetchVoiceActorVars> {
  GFetchVoiceActorReq._();

  factory GFetchVoiceActorReq(
          [void Function(GFetchVoiceActorReqBuilder b) updates]) =
      _$GFetchVoiceActorReq;

  static void _initializeBuilder(GFetchVoiceActorReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FetchVoiceActor',
    )
    ..executeOnListen = true;

  @override
  _i3.GFetchVoiceActorVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GFetchVoiceActorData? Function(
    _i2.GFetchVoiceActorData?,
    _i2.GFetchVoiceActorData?,
  )? get updateResult;
  @override
  _i2.GFetchVoiceActorData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GFetchVoiceActorData? parseData(Map<String, dynamic> json) =>
      _i2.GFetchVoiceActorData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GFetchVoiceActorData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GFetchVoiceActorData, _i3.GFetchVoiceActorVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GFetchVoiceActorReq> get serializer =>
      _$gFetchVoiceActorReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFetchVoiceActorReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFetchVoiceActorReq.serializer,
        json,
      );
}
