import 'dart:async';
import 'package:http/http.dart';

import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:web3dart/web3dart.dart';
import '../credentials/wallet_connect_credentials.dart';
import 'connection_provider.dart';

class WalletConnectConnectionProvider extends ConnectionProvider {
  WalletConnectConnectionProvider({required this.walletConnect});

  final WalletConnect walletConnect;

  Web3Client? _client;
  @override
  Web3Client? get client => _client;

  @override
  Future<void> connect({required String rpcUrl, required int chainID}) async {
    final provider =
        EthereumWalletConnectProvider(walletConnect, chainId: chainID);
    _credentials = WalletConnectCredentials(provider: provider);
    final http = Client();
    _client = Web3Client(rpcUrl, http);
    walletConnect.on("connect", (event) => notifyListeners());
    walletConnect.on("disconnect", (event) => notifyListeners());
    walletConnect.on("session_update", (event) => notifyListeners());
    notifyListeners();
  }

  Credentials? _credentials;
  @override
  Credentials? get credentials => _credentials;

  @override
  Future<void> disconnect() async {
    walletConnect.killSession();
    _credentials = null;
    notifyListeners();
  }

  @override
  bool get isConnected => walletConnect.connected;

  @override
  int? get chainId => walletConnect.session.chainId;

  @override
  bool get isCorrectChain =>
      walletConnect.session.chainId == chainId && isConnected;
}
