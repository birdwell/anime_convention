// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_voice_actor.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchVoiceActorData> _$gFetchVoiceActorDataSerializer =
    new _$GFetchVoiceActorDataSerializer();
Serializer<GFetchVoiceActorData_Staff> _$gFetchVoiceActorDataStaffSerializer =
    new _$GFetchVoiceActorData_StaffSerializer();
Serializer<GFetchVoiceActorData_Staff_name>
    _$gFetchVoiceActorDataStaffNameSerializer =
    new _$GFetchVoiceActorData_Staff_nameSerializer();
Serializer<GFetchVoiceActorData_Staff_image>
    _$gFetchVoiceActorDataStaffImageSerializer =
    new _$GFetchVoiceActorData_Staff_imageSerializer();
Serializer<GFetchVoiceActorData_Staff_characters>
    _$gFetchVoiceActorDataStaffCharactersSerializer =
    new _$GFetchVoiceActorData_Staff_charactersSerializer();
Serializer<GFetchVoiceActorData_Staff_characters_edges>
    _$gFetchVoiceActorDataStaffCharactersEdgesSerializer =
    new _$GFetchVoiceActorData_Staff_characters_edgesSerializer();
Serializer<GFetchVoiceActorData_Staff_characters_edges_node>
    _$gFetchVoiceActorDataStaffCharactersEdgesNodeSerializer =
    new _$GFetchVoiceActorData_Staff_characters_edges_nodeSerializer();
Serializer<GFetchVoiceActorData_Staff_characters_edges_node_name>
    _$gFetchVoiceActorDataStaffCharactersEdgesNodeNameSerializer =
    new _$GFetchVoiceActorData_Staff_characters_edges_node_nameSerializer();
Serializer<GFetchVoiceActorData_Staff_characters_edges_node_image>
    _$gFetchVoiceActorDataStaffCharactersEdgesNodeImageSerializer =
    new _$GFetchVoiceActorData_Staff_characters_edges_node_imageSerializer();
Serializer<GFetchVoiceActorData_Staff_characters_edges_media>
    _$gFetchVoiceActorDataStaffCharactersEdgesMediaSerializer =
    new _$GFetchVoiceActorData_Staff_characters_edges_mediaSerializer();
Serializer<GFetchVoiceActorData_Staff_characters_edges_media_title>
    _$gFetchVoiceActorDataStaffCharactersEdgesMediaTitleSerializer =
    new _$GFetchVoiceActorData_Staff_characters_edges_media_titleSerializer();

class _$GFetchVoiceActorDataSerializer
    implements StructuredSerializer<GFetchVoiceActorData> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData,
    _$GFetchVoiceActorData
  ];
  @override
  final String wireName = 'GFetchVoiceActorData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchVoiceActorData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Staff;
    if (value != null) {
      result
        ..add('Staff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFetchVoiceActorData_Staff)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Staff':
          result.Staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFetchVoiceActorData_Staff))!
              as GFetchVoiceActorData_Staff);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_StaffSerializer
    implements StructuredSerializer<GFetchVoiceActorData_Staff> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff,
    _$GFetchVoiceActorData_Staff
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchVoiceActorData_Staff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFetchVoiceActorData_Staff_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFetchVoiceActorData_Staff_image)));
    }
    value = object.languageV2;
    if (value != null) {
      result
        ..add('languageV2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GFetchVoiceActorData_Staff_characters)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorData_StaffBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchVoiceActorData_Staff_name))!
              as GFetchVoiceActorData_Staff_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchVoiceActorData_Staff_image))!
              as GFetchVoiceActorData_Staff_image);
          break;
        case 'languageV2':
          result.languageV2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchVoiceActorData_Staff_characters))!
              as GFetchVoiceActorData_Staff_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_nameSerializer
    implements StructuredSerializer<GFetchVoiceActorData_Staff_name> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_name,
    _$GFetchVoiceActorData_Staff_name
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchVoiceActorData_Staff_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last;
    if (value != null) {
      result
        ..add('last')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.native;
    if (value != null) {
      result
        ..add('native')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorData_Staff_nameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'native':
          result.native = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_imageSerializer
    implements StructuredSerializer<GFetchVoiceActorData_Staff_image> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_image,
    _$GFetchVoiceActorData_Staff_image
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchVoiceActorData_Staff_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorData_Staff_imageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_charactersSerializer
    implements StructuredSerializer<GFetchVoiceActorData_Staff_characters> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters,
    _$GFetchVoiceActorData_Staff_characters
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchVoiceActorData_Staff_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GFetchVoiceActorData_Staff_characters_edges)
            ])));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorData_Staff_charactersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GFetchVoiceActorData_Staff_characters_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_characters_edgesSerializer
    implements
        StructuredSerializer<GFetchVoiceActorData_Staff_characters_edges> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters_edges,
    _$GFetchVoiceActorData_Staff_characters_edges
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff_characters_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFetchVoiceActorData_Staff_characters_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFetchVoiceActorData_Staff_characters_edges_node)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GFetchVoiceActorData_Staff_characters_edges_media)
            ])));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchVoiceActorData_Staff_characters_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchVoiceActorData_Staff_characters_edges_node))!
              as GFetchVoiceActorData_Staff_characters_edges_node);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GFetchVoiceActorData_Staff_characters_edges_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_nodeSerializer
    implements
        StructuredSerializer<GFetchVoiceActorData_Staff_characters_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters_edges_node,
    _$GFetchVoiceActorData_Staff_characters_edges_node
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff_characters_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFetchVoiceActorData_Staff_characters_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFetchVoiceActorData_Staff_characters_edges_node_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFetchVoiceActorData_Staff_characters_edges_node_image)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchVoiceActorData_Staff_characters_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchVoiceActorData_Staff_characters_edges_node_name))!
              as GFetchVoiceActorData_Staff_characters_edges_node_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchVoiceActorData_Staff_characters_edges_node_image))!
              as GFetchVoiceActorData_Staff_characters_edges_node_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_node_nameSerializer
    implements
        StructuredSerializer<
            GFetchVoiceActorData_Staff_characters_edges_node_name> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters_edges_node_name,
    _$GFetchVoiceActorData_Staff_characters_edges_node_name
  ];
  @override
  final String wireName =
      'GFetchVoiceActorData_Staff_characters_edges_node_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFetchVoiceActorData_Staff_characters_edges_node_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.full;
    if (value != null) {
      result
        ..add('full')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_node_imageSerializer
    implements
        StructuredSerializer<
            GFetchVoiceActorData_Staff_characters_edges_node_image> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters_edges_node_image,
    _$GFetchVoiceActorData_Staff_characters_edges_node_image
  ];
  @override
  final String wireName =
      'GFetchVoiceActorData_Staff_characters_edges_node_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFetchVoiceActorData_Staff_characters_edges_node_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_mediaSerializer
    implements
        StructuredSerializer<
            GFetchVoiceActorData_Staff_characters_edges_media> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters_edges_media,
    _$GFetchVoiceActorData_Staff_characters_edges_media
  ];
  @override
  final String wireName = 'GFetchVoiceActorData_Staff_characters_edges_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFetchVoiceActorData_Staff_characters_edges_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFetchVoiceActorData_Staff_characters_edges_media_title)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchVoiceActorData_Staff_characters_edges_mediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFetchVoiceActorData_Staff_characters_edges_media_title))!
              as GFetchVoiceActorData_Staff_characters_edges_media_title);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_media_titleSerializer
    implements
        StructuredSerializer<
            GFetchVoiceActorData_Staff_characters_edges_media_title> {
  @override
  final Iterable<Type> types = const [
    GFetchVoiceActorData_Staff_characters_edges_media_title,
    _$GFetchVoiceActorData_Staff_characters_edges_media_title
  ];
  @override
  final String wireName =
      'GFetchVoiceActorData_Staff_characters_edges_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFetchVoiceActorData_Staff_characters_edges_media_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.romaji;
    if (value != null) {
      result
        ..add('romaji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.native;
    if (value != null) {
      result
        ..add('native')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'romaji':
          result.romaji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'native':
          result.native = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchVoiceActorData extends GFetchVoiceActorData {
  @override
  final String G__typename;
  @override
  final GFetchVoiceActorData_Staff? Staff;

  factory _$GFetchVoiceActorData(
          [void Function(GFetchVoiceActorDataBuilder)? updates]) =>
      (new GFetchVoiceActorDataBuilder()..update(updates))._build();

  _$GFetchVoiceActorData._({required this.G__typename, this.Staff})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchVoiceActorData', 'G__typename');
  }

  @override
  GFetchVoiceActorData rebuild(
          void Function(GFetchVoiceActorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorDataBuilder toBuilder() =>
      new GFetchVoiceActorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData &&
        G__typename == other.G__typename &&
        Staff == other.Staff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Staff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchVoiceActorData')
          ..add('G__typename', G__typename)
          ..add('Staff', Staff))
        .toString();
  }
}

class GFetchVoiceActorDataBuilder
    implements Builder<GFetchVoiceActorData, GFetchVoiceActorDataBuilder> {
  _$GFetchVoiceActorData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchVoiceActorData_StaffBuilder? _Staff;
  GFetchVoiceActorData_StaffBuilder get Staff =>
      _$this._Staff ??= new GFetchVoiceActorData_StaffBuilder();
  set Staff(GFetchVoiceActorData_StaffBuilder? Staff) => _$this._Staff = Staff;

  GFetchVoiceActorDataBuilder() {
    GFetchVoiceActorData._initializeBuilder(this);
  }

  GFetchVoiceActorDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Staff = $v.Staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData;
  }

  @override
  void update(void Function(GFetchVoiceActorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData build() => _build();

  _$GFetchVoiceActorData _build() {
    _$GFetchVoiceActorData _$result;
    try {
      _$result = _$v ??
          new _$GFetchVoiceActorData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFetchVoiceActorData', 'G__typename'),
              Staff: _Staff?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Staff';
        _Staff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchVoiceActorData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff extends GFetchVoiceActorData_Staff {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GFetchVoiceActorData_Staff_name? name;
  @override
  final GFetchVoiceActorData_Staff_image? image;
  @override
  final String? languageV2;
  @override
  final GFetchVoiceActorData_Staff_characters? characters;

  factory _$GFetchVoiceActorData_Staff(
          [void Function(GFetchVoiceActorData_StaffBuilder)? updates]) =>
      (new GFetchVoiceActorData_StaffBuilder()..update(updates))._build();

  _$GFetchVoiceActorData_Staff._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.image,
      this.languageV2,
      this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchVoiceActorData_Staff', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GFetchVoiceActorData_Staff', 'id');
  }

  @override
  GFetchVoiceActorData_Staff rebuild(
          void Function(GFetchVoiceActorData_StaffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_StaffBuilder toBuilder() =>
      new GFetchVoiceActorData_StaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        languageV2 == other.languageV2 &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, languageV2.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchVoiceActorData_Staff')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('languageV2', languageV2)
          ..add('characters', characters))
        .toString();
  }
}

class GFetchVoiceActorData_StaffBuilder
    implements
        Builder<GFetchVoiceActorData_Staff, GFetchVoiceActorData_StaffBuilder> {
  _$GFetchVoiceActorData_Staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GFetchVoiceActorData_Staff_nameBuilder? _name;
  GFetchVoiceActorData_Staff_nameBuilder get name =>
      _$this._name ??= new GFetchVoiceActorData_Staff_nameBuilder();
  set name(GFetchVoiceActorData_Staff_nameBuilder? name) => _$this._name = name;

  GFetchVoiceActorData_Staff_imageBuilder? _image;
  GFetchVoiceActorData_Staff_imageBuilder get image =>
      _$this._image ??= new GFetchVoiceActorData_Staff_imageBuilder();
  set image(GFetchVoiceActorData_Staff_imageBuilder? image) =>
      _$this._image = image;

  String? _languageV2;
  String? get languageV2 => _$this._languageV2;
  set languageV2(String? languageV2) => _$this._languageV2 = languageV2;

  GFetchVoiceActorData_Staff_charactersBuilder? _characters;
  GFetchVoiceActorData_Staff_charactersBuilder get characters =>
      _$this._characters ??= new GFetchVoiceActorData_Staff_charactersBuilder();
  set characters(GFetchVoiceActorData_Staff_charactersBuilder? characters) =>
      _$this._characters = characters;

  GFetchVoiceActorData_StaffBuilder() {
    GFetchVoiceActorData_Staff._initializeBuilder(this);
  }

  GFetchVoiceActorData_StaffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _languageV2 = $v.languageV2;
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff;
  }

  @override
  void update(void Function(GFetchVoiceActorData_StaffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff build() => _build();

  _$GFetchVoiceActorData_Staff _build() {
    _$GFetchVoiceActorData_Staff _$result;
    try {
      _$result = _$v ??
          new _$GFetchVoiceActorData_Staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFetchVoiceActorData_Staff', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GFetchVoiceActorData_Staff', 'id'),
              name: _name?.build(),
              image: _image?.build(),
              languageV2: languageV2,
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();

        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchVoiceActorData_Staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_name
    extends GFetchVoiceActorData_Staff_name {
  @override
  final String G__typename;
  @override
  final String? first;
  @override
  final String? last;
  @override
  final String? native;

  factory _$GFetchVoiceActorData_Staff_name(
          [void Function(GFetchVoiceActorData_Staff_nameBuilder)? updates]) =>
      (new GFetchVoiceActorData_Staff_nameBuilder()..update(updates))._build();

  _$GFetchVoiceActorData_Staff_name._(
      {required this.G__typename, this.first, this.last, this.native})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchVoiceActorData_Staff_name', 'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_name rebuild(
          void Function(GFetchVoiceActorData_Staff_nameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_nameBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_name &&
        G__typename == other.G__typename &&
        first == other.first &&
        last == other.last &&
        native == other.native;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, first.hashCode);
    _$hash = $jc(_$hash, last.hashCode);
    _$hash = $jc(_$hash, native.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchVoiceActorData_Staff_name')
          ..add('G__typename', G__typename)
          ..add('first', first)
          ..add('last', last)
          ..add('native', native))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_nameBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_name,
            GFetchVoiceActorData_Staff_nameBuilder> {
  _$GFetchVoiceActorData_Staff_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _first;
  String? get first => _$this._first;
  set first(String? first) => _$this._first = first;

  String? _last;
  String? get last => _$this._last;
  set last(String? last) => _$this._last = last;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  GFetchVoiceActorData_Staff_nameBuilder() {
    GFetchVoiceActorData_Staff_name._initializeBuilder(this);
  }

  GFetchVoiceActorData_Staff_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _first = $v.first;
      _last = $v.last;
      _native = $v.native;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_name;
  }

  @override
  void update(void Function(GFetchVoiceActorData_Staff_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_name build() => _build();

  _$GFetchVoiceActorData_Staff_name _build() {
    final _$result = _$v ??
        new _$GFetchVoiceActorData_Staff_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GFetchVoiceActorData_Staff_name', 'G__typename'),
            first: first,
            last: last,
            native: native);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_image
    extends GFetchVoiceActorData_Staff_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GFetchVoiceActorData_Staff_image(
          [void Function(GFetchVoiceActorData_Staff_imageBuilder)? updates]) =>
      (new GFetchVoiceActorData_Staff_imageBuilder()..update(updates))._build();

  _$GFetchVoiceActorData_Staff_image._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchVoiceActorData_Staff_image', 'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_image rebuild(
          void Function(GFetchVoiceActorData_Staff_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_imageBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_image &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchVoiceActorData_Staff_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_imageBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_image,
            GFetchVoiceActorData_Staff_imageBuilder> {
  _$GFetchVoiceActorData_Staff_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GFetchVoiceActorData_Staff_imageBuilder() {
    GFetchVoiceActorData_Staff_image._initializeBuilder(this);
  }

  GFetchVoiceActorData_Staff_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_image;
  }

  @override
  void update(void Function(GFetchVoiceActorData_Staff_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_image build() => _build();

  _$GFetchVoiceActorData_Staff_image _build() {
    final _$result = _$v ??
        new _$GFetchVoiceActorData_Staff_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GFetchVoiceActorData_Staff_image', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters
    extends GFetchVoiceActorData_Staff_characters {
  @override
  final String G__typename;
  @override
  final BuiltList<GFetchVoiceActorData_Staff_characters_edges?>? edges;

  factory _$GFetchVoiceActorData_Staff_characters(
          [void Function(GFetchVoiceActorData_Staff_charactersBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_charactersBuilder()..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchVoiceActorData_Staff_characters', 'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_characters rebuild(
          void Function(GFetchVoiceActorData_Staff_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_charactersBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_charactersBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters,
            GFetchVoiceActorData_Staff_charactersBuilder> {
  _$GFetchVoiceActorData_Staff_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFetchVoiceActorData_Staff_characters_edges?>? _edges;
  ListBuilder<GFetchVoiceActorData_Staff_characters_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GFetchVoiceActorData_Staff_characters_edges?>();
  set edges(ListBuilder<GFetchVoiceActorData_Staff_characters_edges?>? edges) =>
      _$this._edges = edges;

  GFetchVoiceActorData_Staff_charactersBuilder() {
    GFetchVoiceActorData_Staff_characters._initializeBuilder(this);
  }

  GFetchVoiceActorData_Staff_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters;
  }

  @override
  void update(
      void Function(GFetchVoiceActorData_Staff_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters build() => _build();

  _$GFetchVoiceActorData_Staff_characters _build() {
    _$GFetchVoiceActorData_Staff_characters _$result;
    try {
      _$result = _$v ??
          new _$GFetchVoiceActorData_Staff_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GFetchVoiceActorData_Staff_characters', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchVoiceActorData_Staff_characters',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges
    extends GFetchVoiceActorData_Staff_characters_edges {
  @override
  final String G__typename;
  @override
  final GFetchVoiceActorData_Staff_characters_edges_node? node;
  @override
  final BuiltList<GFetchVoiceActorData_Staff_characters_edges_media?>? media;

  factory _$GFetchVoiceActorData_Staff_characters_edges(
          [void Function(GFetchVoiceActorData_Staff_characters_edgesBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_characters_edgesBuilder()
            ..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters_edges._(
      {required this.G__typename, this.node, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFetchVoiceActorData_Staff_characters_edges', 'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges rebuild(
          void Function(GFetchVoiceActorData_Staff_characters_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_characters_edgesBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_characters_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters_edges &&
        G__typename == other.G__typename &&
        node == other.node &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters_edges')
          ..add('G__typename', G__typename)
          ..add('node', node)
          ..add('media', media))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_characters_edgesBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters_edges,
            GFetchVoiceActorData_Staff_characters_edgesBuilder> {
  _$GFetchVoiceActorData_Staff_characters_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchVoiceActorData_Staff_characters_edges_nodeBuilder? _node;
  GFetchVoiceActorData_Staff_characters_edges_nodeBuilder get node =>
      _$this._node ??=
          new GFetchVoiceActorData_Staff_characters_edges_nodeBuilder();
  set node(GFetchVoiceActorData_Staff_characters_edges_nodeBuilder? node) =>
      _$this._node = node;

  ListBuilder<GFetchVoiceActorData_Staff_characters_edges_media?>? _media;
  ListBuilder<GFetchVoiceActorData_Staff_characters_edges_media?> get media =>
      _$this._media ??=
          new ListBuilder<GFetchVoiceActorData_Staff_characters_edges_media?>();
  set media(
          ListBuilder<GFetchVoiceActorData_Staff_characters_edges_media?>?
              media) =>
      _$this._media = media;

  GFetchVoiceActorData_Staff_characters_edgesBuilder() {
    GFetchVoiceActorData_Staff_characters_edges._initializeBuilder(this);
  }

  GFetchVoiceActorData_Staff_characters_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters_edges;
  }

  @override
  void update(
      void Function(GFetchVoiceActorData_Staff_characters_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges build() => _build();

  _$GFetchVoiceActorData_Staff_characters_edges _build() {
    _$GFetchVoiceActorData_Staff_characters_edges _$result;
    try {
      _$result = _$v ??
          new _$GFetchVoiceActorData_Staff_characters_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GFetchVoiceActorData_Staff_characters_edges',
                  'G__typename'),
              node: _node?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchVoiceActorData_Staff_characters_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_node
    extends GFetchVoiceActorData_Staff_characters_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GFetchVoiceActorData_Staff_characters_edges_node_name? name;
  @override
  final GFetchVoiceActorData_Staff_characters_edges_node_image? image;

  factory _$GFetchVoiceActorData_Staff_characters_edges_node(
          [void Function(
                  GFetchVoiceActorData_Staff_characters_edges_nodeBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_characters_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters_edges_node._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFetchVoiceActorData_Staff_characters_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GFetchVoiceActorData_Staff_characters_edges_node', 'id');
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node rebuild(
          void Function(GFetchVoiceActorData_Staff_characters_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_characters_edges_nodeBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_characters_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_characters_edges_nodeBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters_edges_node,
            GFetchVoiceActorData_Staff_characters_edges_nodeBuilder> {
  _$GFetchVoiceActorData_Staff_characters_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder? _name;
  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder get name =>
      _$this._name ??=
          new GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder();
  set name(
          GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder? name) =>
      _$this._name = name;

  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder? _image;
  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder get image =>
      _$this._image ??=
          new GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder();
  set image(
          GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder?
              image) =>
      _$this._image = image;

  GFetchVoiceActorData_Staff_characters_edges_nodeBuilder() {
    GFetchVoiceActorData_Staff_characters_edges_node._initializeBuilder(this);
  }

  GFetchVoiceActorData_Staff_characters_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters_edges_node;
  }

  @override
  void update(
      void Function(GFetchVoiceActorData_Staff_characters_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node build() => _build();

  _$GFetchVoiceActorData_Staff_characters_edges_node _build() {
    _$GFetchVoiceActorData_Staff_characters_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GFetchVoiceActorData_Staff_characters_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GFetchVoiceActorData_Staff_characters_edges_node',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GFetchVoiceActorData_Staff_characters_edges_node', 'id'),
              name: _name?.build(),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchVoiceActorData_Staff_characters_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_node_name
    extends GFetchVoiceActorData_Staff_characters_edges_node_name {
  @override
  final String G__typename;
  @override
  final String? full;

  factory _$GFetchVoiceActorData_Staff_characters_edges_node_name(
          [void Function(
                  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder()
            ..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters_edges_node_name._(
      {required this.G__typename, this.full})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFetchVoiceActorData_Staff_characters_edges_node_name',
        'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_name rebuild(
          void Function(
                  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters_edges_node_name &&
        G__typename == other.G__typename &&
        full == other.full;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters_edges_node_name')
          ..add('G__typename', G__typename)
          ..add('full', full))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters_edges_node_name,
            GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder> {
  _$GFetchVoiceActorData_Staff_characters_edges_node_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder() {
    GFetchVoiceActorData_Staff_characters_edges_node_name._initializeBuilder(
        this);
  }

  GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _full = $v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters_edges_node_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters_edges_node_name;
  }

  @override
  void update(
      void Function(
              GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_name build() => _build();

  _$GFetchVoiceActorData_Staff_characters_edges_node_name _build() {
    final _$result = _$v ??
        new _$GFetchVoiceActorData_Staff_characters_edges_node_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFetchVoiceActorData_Staff_characters_edges_node_name',
                'G__typename'),
            full: full);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_node_image
    extends GFetchVoiceActorData_Staff_characters_edges_node_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GFetchVoiceActorData_Staff_characters_edges_node_image(
          [void Function(
                  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder()
            ..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters_edges_node_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFetchVoiceActorData_Staff_characters_edges_node_image',
        'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_image rebuild(
          void Function(
                  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters_edges_node_image &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters_edges_node_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters_edges_node_image,
            GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder> {
  _$GFetchVoiceActorData_Staff_characters_edges_node_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder() {
    GFetchVoiceActorData_Staff_characters_edges_node_image._initializeBuilder(
        this);
  }

  GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters_edges_node_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters_edges_node_image;
  }

  @override
  void update(
      void Function(
              GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_node_image build() => _build();

  _$GFetchVoiceActorData_Staff_characters_edges_node_image _build() {
    final _$result = _$v ??
        new _$GFetchVoiceActorData_Staff_characters_edges_node_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFetchVoiceActorData_Staff_characters_edges_node_image',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_media
    extends GFetchVoiceActorData_Staff_characters_edges_media {
  @override
  final String G__typename;
  @override
  final GFetchVoiceActorData_Staff_characters_edges_media_title? title;

  factory _$GFetchVoiceActorData_Staff_characters_edges_media(
          [void Function(
                  GFetchVoiceActorData_Staff_characters_edges_mediaBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_characters_edges_mediaBuilder()
            ..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters_edges_media._(
      {required this.G__typename, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFetchVoiceActorData_Staff_characters_edges_media', 'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_media rebuild(
          void Function(
                  GFetchVoiceActorData_Staff_characters_edges_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_characters_edges_mediaBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_characters_edges_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters_edges_media &&
        G__typename == other.G__typename &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters_edges_media')
          ..add('G__typename', G__typename)
          ..add('title', title))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_characters_edges_mediaBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters_edges_media,
            GFetchVoiceActorData_Staff_characters_edges_mediaBuilder> {
  _$GFetchVoiceActorData_Staff_characters_edges_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder? _title;
  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder get title =>
      _$this._title ??=
          new GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder();
  set title(
          GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder?
              title) =>
      _$this._title = title;

  GFetchVoiceActorData_Staff_characters_edges_mediaBuilder() {
    GFetchVoiceActorData_Staff_characters_edges_media._initializeBuilder(this);
  }

  GFetchVoiceActorData_Staff_characters_edges_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters_edges_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters_edges_media;
  }

  @override
  void update(
      void Function(GFetchVoiceActorData_Staff_characters_edges_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_media build() => _build();

  _$GFetchVoiceActorData_Staff_characters_edges_media _build() {
    _$GFetchVoiceActorData_Staff_characters_edges_media _$result;
    try {
      _$result = _$v ??
          new _$GFetchVoiceActorData_Staff_characters_edges_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GFetchVoiceActorData_Staff_characters_edges_media',
                  'G__typename'),
              title: _title?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchVoiceActorData_Staff_characters_edges_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchVoiceActorData_Staff_characters_edges_media_title
    extends GFetchVoiceActorData_Staff_characters_edges_media_title {
  @override
  final String G__typename;
  @override
  final String? romaji;
  @override
  final String? english;
  @override
  final String? native;

  factory _$GFetchVoiceActorData_Staff_characters_edges_media_title(
          [void Function(
                  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder)?
              updates]) =>
      (new GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GFetchVoiceActorData_Staff_characters_edges_media_title._(
      {required this.G__typename, this.romaji, this.english, this.native})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFetchVoiceActorData_Staff_characters_edges_media_title',
        'G__typename');
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_media_title rebuild(
          void Function(
                  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder toBuilder() =>
      new GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchVoiceActorData_Staff_characters_edges_media_title &&
        G__typename == other.G__typename &&
        romaji == other.romaji &&
        english == other.english &&
        native == other.native;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, romaji.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, native.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchVoiceActorData_Staff_characters_edges_media_title')
          ..add('G__typename', G__typename)
          ..add('romaji', romaji)
          ..add('english', english)
          ..add('native', native))
        .toString();
  }
}

class GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder
    implements
        Builder<GFetchVoiceActorData_Staff_characters_edges_media_title,
            GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder> {
  _$GFetchVoiceActorData_Staff_characters_edges_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _romaji;
  String? get romaji => _$this._romaji;
  set romaji(String? romaji) => _$this._romaji = romaji;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder() {
    GFetchVoiceActorData_Staff_characters_edges_media_title._initializeBuilder(
        this);
  }

  GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _romaji = $v.romaji;
      _english = $v.english;
      _native = $v.native;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchVoiceActorData_Staff_characters_edges_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchVoiceActorData_Staff_characters_edges_media_title;
  }

  @override
  void update(
      void Function(
              GFetchVoiceActorData_Staff_characters_edges_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchVoiceActorData_Staff_characters_edges_media_title build() => _build();

  _$GFetchVoiceActorData_Staff_characters_edges_media_title _build() {
    final _$result = _$v ??
        new _$GFetchVoiceActorData_Staff_characters_edges_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFetchVoiceActorData_Staff_characters_edges_media_title',
                'G__typename'),
            romaji: romaji,
            english: english,
            native: native);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
