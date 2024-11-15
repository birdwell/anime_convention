// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$charactersHash() => r'b50bf90d082a969f81456957bbe92160c002e42f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [characters].
@ProviderFor(characters)
const charactersProvider = CharactersFamily();

/// See also [characters].
class CharactersFamily
    extends Family<AsyncValue<GFetchCharactersData_Staff_characters?>> {
  /// See also [characters].
  const CharactersFamily();

  /// See also [characters].
  CharactersProvider call(
    String id,
    int page,
    int perPage,
  ) {
    return CharactersProvider(
      id,
      page,
      perPage,
    );
  }

  @override
  CharactersProvider getProviderOverride(
    covariant CharactersProvider provider,
  ) {
    return call(
      provider.id,
      provider.page,
      provider.perPage,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'charactersProvider';
}

/// See also [characters].
class CharactersProvider
    extends AutoDisposeFutureProvider<GFetchCharactersData_Staff_characters?> {
  /// See also [characters].
  CharactersProvider(
    String id,
    int page,
    int perPage,
  ) : this._internal(
          (ref) => characters(
            ref as CharactersRef,
            id,
            page,
            perPage,
          ),
          from: charactersProvider,
          name: r'charactersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$charactersHash,
          dependencies: CharactersFamily._dependencies,
          allTransitiveDependencies:
              CharactersFamily._allTransitiveDependencies,
          id: id,
          page: page,
          perPage: perPage,
        );

  CharactersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.page,
    required this.perPage,
  }) : super.internal();

  final String id;
  final int page;
  final int perPage;

  @override
  Override overrideWith(
    FutureOr<GFetchCharactersData_Staff_characters?> Function(
            CharactersRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CharactersProvider._internal(
        (ref) => create(ref as CharactersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        page: page,
        perPage: perPage,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GFetchCharactersData_Staff_characters?>
      createElement() {
    return _CharactersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CharactersProvider &&
        other.id == id &&
        other.page == page &&
        other.perPage == perPage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CharactersRef
    on AutoDisposeFutureProviderRef<GFetchCharactersData_Staff_characters?> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _CharactersProviderElement extends AutoDisposeFutureProviderElement<
    GFetchCharactersData_Staff_characters?> with CharactersRef {
  _CharactersProviderElement(super.provider);

  @override
  String get id => (origin as CharactersProvider).id;
  @override
  int get page => (origin as CharactersProvider).page;
  @override
  int get perPage => (origin as CharactersProvider).perPage;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
