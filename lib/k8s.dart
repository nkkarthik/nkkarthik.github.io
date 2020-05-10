
// node
// metadata name
// status
//   capacity
//     cpu memory pods

import 'package:firebase/firebase.dart';

class Cluster {
  String uid;
  List<Node> nodes = [];

  Cluster(this.uid);

  Cluster.fromSnapshot(DataSnapshot snapshot) :
        uid = snapshot.key,
        nodes = snapshot.val()["nodes"];

  toJson() {
    return {
      "nodes": nodes
    };
  }
}

class Node {
  String name;

  Node(this.name);

  Node.fromSnapshot(DataSnapshot snapshot) :
      name = "unknown"; // snapshot.value["metadata"].value["name"];

  toJson() {
    return {
      "metadata": {
        "name": name
      }
    };
  }
}

