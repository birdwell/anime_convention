// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:anime_convention/__generated__/schema.schema.gql.dart'
    show
        GActivitySort,
        GActivityType,
        GAiringScheduleInput,
        GAiringSort,
        GAniChartHighlightInput,
        GCharacterNameInput,
        GCharacterRole,
        GCharacterSort,
        GCountryCode,
        GExternalLinkMediaType,
        GExternalLinkType,
        GFuzzyDateInput,
        GFuzzyDateInt,
        GJson,
        GLikeableType,
        GListActivityOptionInput,
        GMediaExternalLinkInput,
        GMediaFormat,
        GMediaListOptionsInput,
        GMediaListSort,
        GMediaListStatus,
        GMediaRankType,
        GMediaRelation,
        GMediaSeason,
        GMediaSort,
        GMediaSource,
        GMediaStatus,
        GMediaTitleInput,
        GMediaTrendSort,
        GMediaType,
        GModActionType,
        GModRole,
        GNotificationOptionInput,
        GNotificationType,
        GRecommendationRating,
        GRecommendationSort,
        GReviewRating,
        GReviewSort,
        GRevisionHistoryAction,
        GScoreFormat,
        GSiteTrendSort,
        GStaffLanguage,
        GStaffNameInput,
        GStaffSort,
        GStudioSort,
        GSubmissionSort,
        GSubmissionStatus,
        GThreadCommentSort,
        GThreadSort,
        GUserSort,
        GUserStaffNameLanguage,
        GUserStatisticsSort,
        GUserTitleLanguage;
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart'
    show
        GFetchVoiceActorData,
        GFetchVoiceActorData_Staff,
        GFetchVoiceActorData_Staff_characters,
        GFetchVoiceActorData_Staff_characters_edges,
        GFetchVoiceActorData_Staff_characters_edges_media,
        GFetchVoiceActorData_Staff_characters_edges_media_title,
        GFetchVoiceActorData_Staff_characters_edges_node,
        GFetchVoiceActorData_Staff_characters_edges_node_image,
        GFetchVoiceActorData_Staff_characters_edges_node_name,
        GFetchVoiceActorData_Staff_image,
        GFetchVoiceActorData_Staff_name;
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.req.gql.dart'
    show GFetchVoiceActorReq;
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.var.gql.dart'
    show GFetchVoiceActorVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GActivitySort,
  GActivityType,
  GAiringScheduleInput,
  GAiringSort,
  GAniChartHighlightInput,
  GCharacterNameInput,
  GCharacterRole,
  GCharacterSort,
  GCountryCode,
  GExternalLinkMediaType,
  GExternalLinkType,
  GFetchVoiceActorData,
  GFetchVoiceActorData_Staff,
  GFetchVoiceActorData_Staff_characters,
  GFetchVoiceActorData_Staff_characters_edges,
  GFetchVoiceActorData_Staff_characters_edges_media,
  GFetchVoiceActorData_Staff_characters_edges_media_title,
  GFetchVoiceActorData_Staff_characters_edges_node,
  GFetchVoiceActorData_Staff_characters_edges_node_image,
  GFetchVoiceActorData_Staff_characters_edges_node_name,
  GFetchVoiceActorData_Staff_image,
  GFetchVoiceActorData_Staff_name,
  GFetchVoiceActorReq,
  GFetchVoiceActorVars,
  GFuzzyDateInput,
  GFuzzyDateInt,
  GJson,
  GLikeableType,
  GListActivityOptionInput,
  GMediaExternalLinkInput,
  GMediaFormat,
  GMediaListOptionsInput,
  GMediaListSort,
  GMediaListStatus,
  GMediaRankType,
  GMediaRelation,
  GMediaSeason,
  GMediaSort,
  GMediaSource,
  GMediaStatus,
  GMediaTitleInput,
  GMediaTrendSort,
  GMediaType,
  GModActionType,
  GModRole,
  GNotificationOptionInput,
  GNotificationType,
  GRecommendationRating,
  GRecommendationSort,
  GReviewRating,
  GReviewSort,
  GRevisionHistoryAction,
  GScoreFormat,
  GSiteTrendSort,
  GStaffLanguage,
  GStaffNameInput,
  GStaffSort,
  GStudioSort,
  GSubmissionSort,
  GSubmissionStatus,
  GThreadCommentSort,
  GThreadSort,
  GUserSort,
  GUserStaffNameLanguage,
  GUserStatisticsSort,
  GUserTitleLanguage,
])
final Serializers serializers = _serializersBuilder.build();
