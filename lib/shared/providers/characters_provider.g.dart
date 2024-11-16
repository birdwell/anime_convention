// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$charactersHash() => r'5a02f1de4cfad02c223e4549d0ce11f29b3e4a64';

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

abstract class _$Characters
    extends BuildlessAutoDisposeAsyncNotifier<CharactersState> {
  late final int staffId;

  FutureOr<CharactersState> build(
    int staffId,
  );
}

/// See also [Characters].
@ProviderFor(Characters)
const charactersProvider = CharactersFamily();

/// See also [Characters].
class CharactersFamily extends Family<AsyncValue<CharactersState>> {
  /// See also [Characters].
  const CharactersFamily();

  /// See also [Characters].
  CharactersProvider call(
    int staffId,
  ) {
    return CharactersProvider(
      staffId,
    );
  }

  @override
  CharactersProvider getProviderOverride(
    covariant CharactersProvider provider,
  ) {
    return call(
      provider.staffId,
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

/// See also [Characters].
class CharactersProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Characters, CharactersState> {
  /// See also [Characters].
  CharactersProvider(
    int staffId,
  ) : this._internal(
          () => Characters()..staffId = staffId,
          from: charactersProvider,
          name: r'charactersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$charactersHash,
          dependencies: CharactersFamily._dependencies,
          allTransitiveDependencies:
              CharactersFamily._allTransitiveDependencies,
          staffId: staffId,
        );

  CharactersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.staffId,
  }) : super.internal();

  final int staffId;

  @override
  FutureOr<CharactersState> runNotifierBuild(
    covariant Characters notifier,
  ) {
    return notifier.build(
      staffId,
    );
  }

  @override
  Override overrideWith(Characters Function() create) {
    return ProviderOverride(
      origin: this,
      override: CharactersProvider._internal(
        () => create()..staffId = staffId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        staffId: staffId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Characters, CharactersState>
      createElement() {
    return _CharactersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CharactersProvider && other.staffId == staffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, staffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CharactersRef on AutoDisposeAsyncNotifierProviderRef<CharactersState> {
  /// The parameter `staffId` of this provider.
  int get staffId;
}

class _CharactersProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Characters, CharactersState>
    with CharactersRef {
  _CharactersProviderElement(super.provider);

  @override
  int get staffId => (origin as CharactersProvider).staffId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
