import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'k8s.g.dart';

abstract class K8s implements Built<K8s, K8sBuilder> {
  BuiltMap<String, Cluster> get clusters;

  K8s._();
  static Serializer<K8s> get serializer => _$k8sSerializer;
  factory K8s([void Function(K8sBuilder) updates]) = _$K8s;
}

abstract class Cluster implements Built<Cluster, ClusterBuilder> {
  BuiltMap<String, Node> get nodes;

  Cluster._();
  static Serializer<Cluster> get serializer => _$clusterSerializer;
  factory Cluster([void Function(ClusterBuilder) updates]) = _$Cluster;
}

abstract class Node implements Built<Node, NodeBuilder> {
  Metadata get metadata;

  Node._();
  static Serializer<Node> get serializer => _$nodeSerializer;
  factory Node([void Function(NodeBuilder) updates]) = _$Node;
}

abstract class Metadata implements Built<Metadata, MetadataBuilder> {
  String get name;

  Metadata._();
  static Serializer<Metadata> get serializer => _$metadataSerializer;
  factory Metadata([void Function(MetadataBuilder) updates]) = _$Metadata;
}

//  // Can never be null.
//  int get id;
//
//  @nullable
//  int get age;
//
//  @nullable
//  @BuiltValueField(wireName: 'first_name')
//  String get firstName;
//
//  @nullable
//  BuiltList<String> get hobbies;

