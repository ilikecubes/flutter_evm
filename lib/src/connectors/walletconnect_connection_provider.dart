import 'dart:async';

import 'package:flutter/material.dart';
import 'package:walletconnect_qrcode_modal_dart/walletconnect_qrcode_modal_dart.dart';
import 'connection_provider.dart';

class WalletConnectConnectionProvider extends ConnectionProvider {
  WalletConnectConnectionProvider(
      {required this.context, required WalletConnectQrCodeModal walletConnect})
      : _walletConnect = walletConnect,
        super() {
    _walletConnect.registerListeners(
      onConnect: (_) => _updateValues,
      onSessionUpdate: (_) => _updateValues,
      onDisconnect: _updateValues,
    );
  }

  void _updateValues() {
    currentAddress.value = _walletConnect.connector.session.accounts.first;
    isConnected.value = _walletConnect.connector.connected;
    notifyListeners();
  }

  final WalletConnectQrCodeModal _walletConnect;
  final BuildContext context;

  @override
  Future<String>? call(
      {String? to,
      String? from,
      BigInt? value,
      BigInt? gasLimit,
      BigInt? gasPrice,
      int? nounce,
      String? data,
      BigInt? maxFeePerGas,
      BigInt? maxPriorityFeePerGas}) {
    throw UnimplementedError();
  }

  @override
  Future<void> connect({int? chainID}) async {
    debugPrint("WC");
    final response = await _walletConnect.connect(context, chainId: chainID);
    if (response != null) {
      _updateValues();
    }
  }

  @override
  Future<void> disconnect() async {
    await _walletConnect.killSession();
    isConnected.value = false;
    currentAddress.value = "";
  }
}
