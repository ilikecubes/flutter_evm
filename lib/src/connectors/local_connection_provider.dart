import 'dart:async';

import 'package:flutter/material.dart';
import 'connection_provider.dart';
import 'package:flutter_web3/flutter_web3.dart';

class LocalConnectionProvider extends ConnectionProvider {
  LocalConnectionProvider() : super() {
    signer.addListener(() {
      notifyListeners();
    });
  }

  final signer = ValueNotifier<Signer?>(null);

  @override
  Future<void> connect({int? chainID}) async {
    debugPrint("LOCAL");
    if (ethereum == null) {
      return;
    }
    final currentChain = await ethereum!.getChainId();
    if (currentChain != chainID) {
      await ethereum!.walletSwitchChain(chainID ?? 56);
    }
    ethereum!.onConnect((info) async {
      final accounts = await ethereum!.getAccounts();
      currentAddress.value = accounts.first;
      isConnected.value = true;
      signer.value = provider?.getSigner();
    });
    ethereum!.onAccountsChanged((chainId) async {
      final accounts = await ethereum!.getAccounts();
      currentAddress.value = accounts.first;
      isConnected.value = true;
      signer.value = provider?.getSigner();
    });
    ethereum!.onDisconnect((_) {
      currentAddress.value = "";
      isConnected.value = false;
      signer.value = null;
    });
    final accounts = await ethereum!.requestAccount();
    if (accounts.isNotEmpty) {
      currentAddress.value = accounts.first;
      isConnected.value = true;
      signer.value = provider!.getSigner();
      notifyListeners();
    }
  }

  @override
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
  }) {
    if (!isConnected.value) {
      return null;
    }

    return signer.value?.call(TransactionRequest(
      to: to,
      from: from,
      value: value,
      gasLimit: gasLimit,
      gasPrice: gasPrice,
      nounce: nounce,
      data: data,
      maxFeePerGas: maxFeePerGas,
      maxPriorityFeePerGas: maxPriorityFeePerGas,
    ));
  }

  @override
  Future<void> disconnect() async {
    currentAddress.value = "";
    isConnected.value = false;
    signer.value = null;
    notifyListeners();
  }
}
