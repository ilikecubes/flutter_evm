import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

abstract class ConnectionProvider extends ChangeNotifier {
  Future<void> connect({required String rpcUrl, required int chainID});

  Future<void> disconnect();

  bool get isConnected;

  Credentials? get credentials;

  int? get chainId;

  bool get isCorrectChain;

  Web3Client? get client;
}
