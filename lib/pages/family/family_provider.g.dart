// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$familyHelloHash() => r'e833cdc8c2469009d942eb12cf1441a7b49b6900';

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

/// See also [familyHello].
@ProviderFor(familyHello)
const familyHelloProvider = FamilyHelloFamily();

/// See also [familyHello].
class FamilyHelloFamily extends Family<String> {
  /// See also [familyHello].
  const FamilyHelloFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'familyHelloProvider';

  /// See also [familyHello].
  FamilyHelloProvider call({
    required String name,
  }) {
    return FamilyHelloProvider(
      name: name,
    );
  }

  @visibleForOverriding
  @override
  FamilyHelloProvider getProviderOverride(
    covariant FamilyHelloProvider provider,
  ) {
    return call(
      name: provider.name,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(String Function(FamilyHelloRef ref) create) {
    return _$FamilyHelloFamilyOverride(this, create);
  }
}

class _$FamilyHelloFamilyOverride implements FamilyOverride<String> {
  _$FamilyHelloFamilyOverride(this.overriddenFamily, this.create);

  final String Function(FamilyHelloRef ref) create;

  @override
  final FamilyHelloFamily overriddenFamily;

  @override
  FamilyHelloProvider getProviderOverride(
    covariant FamilyHelloProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [familyHello].
class FamilyHelloProvider extends Provider<String> {
  /// See also [familyHello].
  FamilyHelloProvider({
    required String name,
  }) : this._internal(
          (ref) => familyHello(
            ref as FamilyHelloRef,
            name: name,
          ),
          from: familyHelloProvider,
          name: r'familyHelloProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$familyHelloHash,
          dependencies: FamilyHelloFamily._dependencies,
          allTransitiveDependencies:
              FamilyHelloFamily._allTransitiveDependencies,
          name: name,
        );

  FamilyHelloProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.name,
  }) : super.internal();

  final String name;

  @override
  Override overrideWith(
    String Function(FamilyHelloRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FamilyHelloProvider._internal(
        (ref) => create(ref as FamilyHelloRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        name: name,
      ),
    );
  }

  @override
  ({
    String name,
  }) get argument {
    return (name: name,);
  }

  @override
  ProviderElement<String> createElement() {
    return _FamilyHelloProviderElement(this);
  }

  FamilyHelloProvider _copyWith(
    String Function(FamilyHelloRef ref) create,
  ) {
    return FamilyHelloProvider._internal(
      (ref) => create(ref as FamilyHelloRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      name: name,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FamilyHelloProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FamilyHelloRef on ProviderRef<String> {
  /// The parameter `name` of this provider.
  String get name;
}

class _FamilyHelloProviderElement extends ProviderElement<String>
    with FamilyHelloRef {
  _FamilyHelloProviderElement(super.provider);

  @override
  String get name => (origin as FamilyHelloProvider).name;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
