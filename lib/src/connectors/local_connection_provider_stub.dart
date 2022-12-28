import 'package:flutter_evm/src/connectors/connection_provider.dart';
import 'package:web3dart/web3dart.dart';

class LocalConnectionProvider extends ConnectionProvider {
  @override
  int? get chainId => -1;

  @override
  Web3Client? get client => null;

  @override
  Future<void> connect({required String rpcUrl, required int chainID}) async {
    return;
  }

  @override
  Credentials? get credentials => null;

  @override
  Future<void> disconnect() async {
    return;
  }

  @override
  bool get isConnected => false;

  @override
  bool get isCorrectChain => false;
}
