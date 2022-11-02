import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

abstract class ConnectionProvider extends ChangeNotifier {
  final isConnected = ValueNotifier<bool>(false);

  final currentAddress = ValueNotifier<String>("");

  ConnectionProvider() {
    isConnected.addListener(() {
      notifyListeners();
    });
    currentAddress.addListener(() {
      notifyListeners();
    });
  }

  Future<void> connect({int? chainID});

  Future<void> disconnect();

  Future<String>? call({
    String? to,
    String? from,
    BigInt? value,
    BigInt? gasLimit,
    BigInt? gasPrice,
    int? nounce,
    String? data,
    BigInt? maxFeePerGas,
    BigInt? maxPriorityFeePerGas,
  });
}
