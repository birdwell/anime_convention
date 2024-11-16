// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$staffHash() => r'd8f8b61839c926f462f0aecf26899d5018f7b605';

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

/// See also [staff].
@ProviderFor(staff)
const staffProvider = StaffFamily();

/// See also [staff].
class StaffFamily extends Family<AsyncValue<GFetchVoiceActorData_Staff?>> {
  /// See also [staff].
  const StaffFamily();

  /// See also [staff].
  StaffProvider call(
    String staffName,
  ) {
    return StaffProvider(
      staffName,
    );
  }

  @override
  StaffProvider getProviderOverride(
    covariant StaffProvider provider,
  ) {
    return call(
      provider.staffName,
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
  String? get name => r'staffProvider';
}

/// See also [staff].
class StaffProvider
    extends AutoDisposeFutureProvider<GFetchVoiceActorData_Staff?> {
  /// See also [staff].
  StaffProvider(
    String staffName,
  ) : this._internal(
          (ref) => staff(
            ref as StaffRef,
            staffName,
          ),
          from: staffProvider,
          name: r'staffProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$staffHash,
          dependencies: StaffFamily._dependencies,
          allTransitiveDependencies: StaffFamily._allTransitiveDependencies,
          staffName: staffName,
        );

  StaffProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.staffName,
  }) : super.internal();

  final String staffName;

  @override
  Override overrideWith(
    FutureOr<GFetchVoiceActorData_Staff?> Function(StaffRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StaffProvider._internal(
        (ref) => create(ref as StaffRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        staffName: staffName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GFetchVoiceActorData_Staff?>
      createElement() {
    return _StaffProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StaffProvider && other.staffName == staffName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, staffName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StaffRef on AutoDisposeFutureProviderRef<GFetchVoiceActorData_Staff?> {
  /// The parameter `staffName` of this provider.
  String get staffName;
}

class _StaffProviderElement
    extends AutoDisposeFutureProviderElement<GFetchVoiceActorData_Staff?>
    with StaffRef {
  _StaffProviderElement(super.provider);

  @override
  String get staffName => (origin as StaffProvider).staffName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
