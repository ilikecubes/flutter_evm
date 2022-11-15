import 'dart:async';
import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:flutter_evm/src/credentials/wallet_connect_credentials.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:walletconnect_qrcode_modal_dart/walletconnect_qrcode_modal_dart.dart';
import 'package:webthree/webthree.dart';
import 'connection_provider.dart';

class WalletConnectConnectionProvider extends ConnectionProvider {
  WalletConnectConnectionProvider({required this.modal, required this.context});

  final WalletConnectQrCodeModal modal;
  final BuildContext context;

  Web3Client? _client;
  @override
  Web3Client? get client => _client;

  @override
  Future<void> connect({required String rpcUrl, required int chainID}) async {
    await modal.connect(context, chainId: chainID);
    final provider =
        EthereumWalletConnectProvider(modal.connector, chainId: chainID);
    _credentials = WalletConnectCredentials(provider: provider);
    final http = Client();
    _client = Web3Client(rpcUrl, http);
    notifyListeners();
  }

  Credentials? _credentials;
  @override
  Credentials? get credentials => _credentials;

  @override
  Future<void> disconnect() async {
    modal.killSession();
    _credentials = null;
    notifyListeners();
  }

  @override
  bool get isConnected => throw UnimplementedError();
}
