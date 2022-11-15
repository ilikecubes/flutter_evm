library flutter_evm;

import 'package:flutter/material.dart';
import 'package:flutter_evm/src/connectors/connection_provider.dart';
import 'package:webthree/webthree.dart';
import 'src/web3modal.dart' if (dart.library.html) 'src/web3modal_web.dart';

export 'src/connectors/connection_provider.dart';

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
  ConnectionProvider? get connectionProvider => _connectionProvider.value;

  Future<void> connect(BuildContext context,
      {String? rpcUrl, int? chainId}) async {
    _connectionProvider.value = await Web3Modal(
      bridge: bridge,
      name: name,
      description: description,
      url: url,
      iconUrl: iconUrl,
    ).connect(context, chainId: chainId, rpcUrl: rpcUrl);
    notifyListeners();
  }

  bool get isConnected => _connectionProvider.value?.isConnected ?? false;

  CredentialsWithKnownAddress? get credentials =>
      _connectionProvider.value?.credentials as CredentialsWithKnownAddress;

  Web3Client? get client => _connectionProvider.value?.client;

  Future<void> disconnect() async {
    await _connectionProvider.value?.disconnect();
    notifyListeners();
  }
}
