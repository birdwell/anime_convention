// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anime_convention/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_voice_actor.data.gql.g.dart';

abstract class GFetchVoiceActorData
    implements Built<GFetchVoiceActorData, GFetchVoiceActorDataBuilder> {
  GFetchVoiceActorData._();

  factory GFetchVoiceActorData(
          [void Function(GFetchVoiceActorDataBuilder b) updates]) =
      _$GFetchVoiceActorData;

  static void _initializeBuilder(GFetchVoiceActorDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchVoiceActorData_Staff? get Staff;
  static Serializer<GFetchVoiceActorData> get serializer =>
      _$gFetchVoiceActorDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff
    implements
        Built<GFetchVoiceActorData_Staff, GFetchVoiceActorData_StaffBuilder> {
  GFetchVoiceActorData_Staff._();

  factory GFetchVoiceActorData_Staff(
          [void Function(GFetchVoiceActorData_StaffBuilder b) updates]) =
      _$GFetchVoiceActorData_Staff;

  static void _initializeBuilder(GFetchVoiceActorData_StaffBuilder b) =>
      b..G__typename = 'Staff';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GFetchVoiceActorData_Staff_name? get name;
  GFetchVoiceActorData_Staff_image? get image;
  String? get languageV2;
  GFetchVoiceActorData_Staff_characters? get characters;
  static Serializer<GFetchVoiceActorData_Staff> get serializer =>
      _$gFetchVoiceActorDataStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_name
    implements
        Built<GFetchVoiceActorData_Staff_name,
            GFetchVoiceActorData_Staff_nameBuilder> {
  GFetchVoiceActorData_Staff_name._();

  factory GFetchVoiceActorData_Staff_name(
          [void Function(GFetchVoiceActorData_Staff_nameBuilder b) updates]) =
      _$GFetchVoiceActorData_Staff_name;

  static void _initializeBuilder(GFetchVoiceActorData_Staff_nameBuilder b) =>
      b..G__typename = 'StaffName';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get first;
  String? get last;
  String? get native;
  static Serializer<GFetchVoiceActorData_Staff_name> get serializer =>
      _$gFetchVoiceActorDataStaffNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_name? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_name.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_image
    implements
        Built<GFetchVoiceActorData_Staff_image,
            GFetchVoiceActorData_Staff_imageBuilder> {
  GFetchVoiceActorData_Staff_image._();

  factory GFetchVoiceActorData_Staff_image(
          [void Function(GFetchVoiceActorData_Staff_imageBuilder b) updates]) =
      _$GFetchVoiceActorData_Staff_image;

  static void _initializeBuilder(GFetchVoiceActorData_Staff_imageBuilder b) =>
      b..G__typename = 'StaffImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GFetchVoiceActorData_Staff_image> get serializer =>
      _$gFetchVoiceActorDataStaffImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_image.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters
    implements
        Built<GFetchVoiceActorData_Staff_characters,
            GFetchVoiceActorData_Staff_charactersBuilder> {
  GFetchVoiceActorData_Staff_characters._();

  factory GFetchVoiceActorData_Staff_characters(
      [void Function(GFetchVoiceActorData_Staff_charactersBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchVoiceActorData_Staff_characters_edges?>? get edges;
  static Serializer<GFetchVoiceActorData_Staff_characters> get serializer =>
      _$gFetchVoiceActorDataStaffCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters_edges
    implements
        Built<GFetchVoiceActorData_Staff_characters_edges,
            GFetchVoiceActorData_Staff_characters_edgesBuilder> {
  GFetchVoiceActorData_Staff_characters_edges._();

  factory GFetchVoiceActorData_Staff_characters_edges(
      [void Function(GFetchVoiceActorData_Staff_characters_edgesBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters_edges;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_characters_edgesBuilder b) =>
      b..G__typename = 'CharacterEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchVoiceActorData_Staff_characters_edges_node? get node;
  BuiltList<GFetchVoiceActorData_Staff_characters_edges_media?>? get media;
  static Serializer<GFetchVoiceActorData_Staff_characters_edges>
      get serializer => _$gFetchVoiceActorDataStaffCharactersEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters_edges.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters_edges_node
    implements
        Built<GFetchVoiceActorData_Staff_characters_edges_node,
            GFetchVoiceActorData_Staff_characters_edges_nodeBuilder> {
  GFetchVoiceActorData_Staff_characters_edges_node._();

  factory GFetchVoiceActorData_Staff_characters_edges_node(
      [void Function(GFetchVoiceActorData_Staff_characters_edges_nodeBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters_edges_node;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_characters_edges_nodeBuilder b) =>
      b..G__typename = 'Character';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GFetchVoiceActorData_Staff_characters_edges_node_name? get name;
  GFetchVoiceActorData_Staff_characters_edges_node_image? get image;
  static Serializer<GFetchVoiceActorData_Staff_characters_edges_node>
      get serializer =>
          _$gFetchVoiceActorDataStaffCharactersEdgesNodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters_edges_node.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters_edges_node_name
    implements
        Built<GFetchVoiceActorData_Staff_characters_edges_node_name,
            GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder> {
  GFetchVoiceActorData_Staff_characters_edges_node_name._();

  factory GFetchVoiceActorData_Staff_characters_edges_node_name(
      [void Function(
              GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters_edges_node_name;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder b) =>
      b..G__typename = 'CharacterName';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  static Serializer<GFetchVoiceActorData_Staff_characters_edges_node_name>
      get serializer =>
          _$gFetchVoiceActorDataStaffCharactersEdgesNodeNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters_edges_node_name.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters_edges_node_image
    implements
        Built<GFetchVoiceActorData_Staff_characters_edges_node_image,
            GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder> {
  GFetchVoiceActorData_Staff_characters_edges_node_image._();

  factory GFetchVoiceActorData_Staff_characters_edges_node_image(
      [void Function(
              GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters_edges_node_image;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder b) =>
      b..G__typename = 'CharacterImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GFetchVoiceActorData_Staff_characters_edges_node_image>
      get serializer =>
          _$gFetchVoiceActorDataStaffCharactersEdgesNodeImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters_edges_node_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters_edges_node_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters_edges_node_image.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters_edges_media
    implements
        Built<GFetchVoiceActorData_Staff_characters_edges_media,
            GFetchVoiceActorData_Staff_characters_edges_mediaBuilder> {
  GFetchVoiceActorData_Staff_characters_edges_media._();

  factory GFetchVoiceActorData_Staff_characters_edges_media(
      [void Function(GFetchVoiceActorData_Staff_characters_edges_mediaBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters_edges_media;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_characters_edges_mediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchVoiceActorData_Staff_characters_edges_media_title? get title;
  static Serializer<GFetchVoiceActorData_Staff_characters_edges_media>
      get serializer =>
          _$gFetchVoiceActorDataStaffCharactersEdgesMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters_edges_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters_edges_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters_edges_media.serializer,
        json,
      );
}

abstract class GFetchVoiceActorData_Staff_characters_edges_media_title
    implements
        Built<GFetchVoiceActorData_Staff_characters_edges_media_title,
            GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder> {
  GFetchVoiceActorData_Staff_characters_edges_media_title._();

  factory GFetchVoiceActorData_Staff_characters_edges_media_title(
      [void Function(
              GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder b)
          updates]) = _$GFetchVoiceActorData_Staff_characters_edges_media_title;

  static void _initializeBuilder(
          GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get romaji;
  String? get english;
  String? get native;
  static Serializer<GFetchVoiceActorData_Staff_characters_edges_media_title>
      get serializer =>
          _$gFetchVoiceActorDataStaffCharactersEdgesMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchVoiceActorData_Staff_characters_edges_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchVoiceActorData_Staff_characters_edges_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchVoiceActorData_Staff_characters_edges_media_title.serializer,
        json,
      );
}
