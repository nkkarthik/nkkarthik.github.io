// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'k8s.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<K8s> _$k8sSerializer = new _$K8sSerializer();
Serializer<Cluster> _$clusterSerializer = new _$ClusterSerializer();
Serializer<Node> _$nodeSerializer = new _$NodeSerializer();
Serializer<Metadata> _$metadataSerializer = new _$MetadataSerializer();

class _$K8sSerializer implements StructuredSerializer<K8s> {
  @override
  final Iterable<Type> types = const [K8s, _$K8s];
  @override
  final String wireName = 'K8s';

  @override
  Iterable<Object> serialize(Serializers serializers, K8s object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'clusters',
      serializers.serialize(object.clusters,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Cluster)])),
    ];

    return result;
  }

  @override
  K8s deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new K8sBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'clusters':
          result.clusters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Cluster)])));
          break;
      }
    }

    return result.build();
  }
}

class _$ClusterSerializer implements StructuredSerializer<Cluster> {
  @override
  final Iterable<Type> types = const [Cluster, _$Cluster];
  @override
  final String wireName = 'Cluster';

  @override
  Iterable<Object> serialize(Serializers serializers, Cluster object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'nodes',
      serializers.serialize(object.nodes,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Node)])),
    ];

    return result;
  }

  @override
  Cluster deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClusterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Node)])));
          break;
      }
    }

    return result.build();
  }
}

class _$NodeSerializer implements StructuredSerializer<Node> {
  @override
  final Iterable<Type> types = const [Node, _$Node];
  @override
  final String wireName = 'Node';

  @override
  Iterable<Object> serialize(Serializers serializers, Node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'metadata',
      serializers.serialize(object.metadata,
          specifiedType: const FullType(Metadata)),
    ];

    return result;
  }

  @override
  Node deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata)) as Metadata);
          break;
      }
    }

    return result.build();
  }
}

class _$MetadataSerializer implements StructuredSerializer<Metadata> {
  @override
  final Iterable<Type> types = const [Metadata, _$Metadata];
  @override
  final String wireName = 'Metadata';

  @override
  Iterable<Object> serialize(Serializers serializers, Metadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Metadata deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$K8s extends K8s {
  @override
  final BuiltMap<String, Cluster> clusters;

  factory _$K8s([void Function(K8sBuilder) updates]) =>
      (new K8sBuilder()..update(updates)).build();

  _$K8s._({this.clusters}) : super._() {
    if (clusters == null) {
      throw new BuiltValueNullFieldError('K8s', 'clusters');
    }
  }

  @override
  K8s rebuild(void Function(K8sBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  K8sBuilder toBuilder() => new K8sBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is K8s && clusters == other.clusters;
  }

  @override
  int get hashCode {
    return $jf($jc(0, clusters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('K8s')..add('clusters', clusters))
        .toString();
  }
}

class K8sBuilder implements Builder<K8s, K8sBuilder> {
  _$K8s _$v;

  MapBuilder<String, Cluster> _clusters;
  MapBuilder<String, Cluster> get clusters =>
      _$this._clusters ??= new MapBuilder<String, Cluster>();
  set clusters(MapBuilder<String, Cluster> clusters) =>
      _$this._clusters = clusters;

  K8sBuilder();

  K8sBuilder get _$this {
    if (_$v != null) {
      _clusters = _$v.clusters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(K8s other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$K8s;
  }

  @override
  void update(void Function(K8sBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$K8s build() {
    _$K8s _$result;
    try {
      _$result = _$v ?? new _$K8s._(clusters: clusters.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'clusters';
        clusters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'K8s', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Cluster extends Cluster {
  @override
  final BuiltMap<String, Node> nodes;

  factory _$Cluster([void Function(ClusterBuilder) updates]) =>
      (new ClusterBuilder()..update(updates)).build();

  _$Cluster._({this.nodes}) : super._() {
    if (nodes == null) {
      throw new BuiltValueNullFieldError('Cluster', 'nodes');
    }
  }

  @override
  Cluster rebuild(void Function(ClusterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClusterBuilder toBuilder() => new ClusterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cluster && nodes == other.nodes;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cluster')..add('nodes', nodes))
        .toString();
  }
}

class ClusterBuilder implements Builder<Cluster, ClusterBuilder> {
  _$Cluster _$v;

  MapBuilder<String, Node> _nodes;
  MapBuilder<String, Node> get nodes =>
      _$this._nodes ??= new MapBuilder<String, Node>();
  set nodes(MapBuilder<String, Node> nodes) => _$this._nodes = nodes;

  ClusterBuilder();

  ClusterBuilder get _$this {
    if (_$v != null) {
      _nodes = _$v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cluster other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cluster;
  }

  @override
  void update(void Function(ClusterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cluster build() {
    _$Cluster _$result;
    try {
      _$result = _$v ?? new _$Cluster._(nodes: nodes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'nodes';
        nodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Cluster', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Node extends Node {
  @override
  final Metadata metadata;

  factory _$Node([void Function(NodeBuilder) updates]) =>
      (new NodeBuilder()..update(updates)).build();

  _$Node._({this.metadata}) : super._() {
    if (metadata == null) {
      throw new BuiltValueNullFieldError('Node', 'metadata');
    }
  }

  @override
  Node rebuild(void Function(NodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NodeBuilder toBuilder() => new NodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Node && metadata == other.metadata;
  }

  @override
  int get hashCode {
    return $jf($jc(0, metadata.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Node')..add('metadata', metadata))
        .toString();
  }
}

class NodeBuilder implements Builder<Node, NodeBuilder> {
  _$Node _$v;

  MetadataBuilder _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder metadata) => _$this._metadata = metadata;

  NodeBuilder();

  NodeBuilder get _$this {
    if (_$v != null) {
      _metadata = _$v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Node other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Node;
  }

  @override
  void update(void Function(NodeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Node build() {
    _$Node _$result;
    try {
      _$result = _$v ?? new _$Node._(metadata: metadata.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Node', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Metadata extends Metadata {
  @override
  final String name;

  factory _$Metadata([void Function(MetadataBuilder) updates]) =>
      (new MetadataBuilder()..update(updates)).build();

  _$Metadata._({this.name}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Metadata', 'name');
    }
  }

  @override
  Metadata rebuild(void Function(MetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataBuilder toBuilder() => new MetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Metadata && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Metadata')..add('name', name))
        .toString();
  }
}

class MetadataBuilder implements Builder<Metadata, MetadataBuilder> {
  _$Metadata _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MetadataBuilder();

  MetadataBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Metadata other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Metadata;
  }

  @override
  void update(void Function(MetadataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Metadata build() {
    final _$result = _$v ?? new _$Metadata._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
