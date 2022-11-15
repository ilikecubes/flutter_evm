import 'package:flutter/material.dart';
import 'package:webthree/webthree.dart';

abstract class ConnectionProvider extends ChangeNotifier {
  Future<void> connect({required String rpcUrl, required int chainID});

  Future<void> disconnect();

  bool get isConnected;

  Credentials? get credentials;

  Web3Client? get client;
}
