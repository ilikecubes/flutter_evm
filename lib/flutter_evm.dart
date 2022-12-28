library flutter_evm;

import 'package:flutter/material.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:web3dart/web3dart.dart';

import 'src/connectors/connection_provider.dart';
import 'src/managers/connector_manager.dart';
import 'src/wallectconnect_qrcode_modal.dart';

class FlutterEVM extends ChangeNotifier {
  FlutterEVM({
    required this.bridge,
    required this.name,
    required this.description,
    required this.url,
    required this.iconUrl,
  }) {
    _connectionProvider.addListener(() {
      notifyListeners();
    });
  }

  final String bridge;
  final String name;
  final String description;
  final String url;
  final String iconUrl;

  final _connectionProvider = ValueNotifier<ConnectionProvider?>(null);

  Future<void> connect(BuildContext context,
      {String? rpcUrl, int? chainId}) async {
    ConnectorManager.instance.update(rpcUrl: rpcUrl, chainId: chainId);
    _connectionProvider.value = await WalletConnectQrCodeModal(
        connector: WalletConnect(
      bridge: bridge,
      clientMeta: PeerMeta(
        name: name,
        description: description,
        url: url,
        icons: [iconUrl],
      ),
    )).connect(context, chainId: chainId);
    _connectionProvider.value?.addListener(() => notifyListeners());
    notifyListeners();
  }

  bool get isConnected => _connectionProvider.value?.isConnected ?? false;

  CredentialsWithKnownAddress? get credentials =>
      _connectionProvider.value?.credentials as CredentialsWithKnownAddress;

  Web3Client? get client => _connectionProvider.value?.client;

  bool get isCorrectChain => _connectionProvider.value?.isCorrectChain ?? false;

  int? get chainId => _connectionProvider.value?.chainId;

  Future<void> disconnect() async {
    await _connectionProvider.value?.disconnect();
    _connectionProvider.value?.removeListener(() => notifyListeners());
    _connectionProvider.value = null;
    notifyListeners();
  }
}
