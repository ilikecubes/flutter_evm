// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:js/js.dart'
    if (dart.library.io) 'package:webthree/lib/src/browser/js-stub.dart'
    if (dart.library.js) 'package:js/js.dart';
import 'package:webthree/browser.dart'
    if (dart.library.io) 'package:webthree/lib/src/browser/dart_wrappers_stub.dart'
    if (dart.library.js) 'package:webthree/browser.dart';
import 'package:webthree/webthree.dart';

import 'connection_provider.dart';

@JS()
@anonymous
class JSrawRequestParams {
  external String get chainId;
  external factory JSrawRequestParams({String chainId});
}

class LocalConnectionProvider extends ConnectionProvider {
  Credentials? _credentials;
  @override
  Credentials? get credentials => _credentials;

  @override
  Future<void> connect({required String rpcUrl, required int chainID}) async {
    final eth = window.ethereum;
    if (eth == null) {
      return;
    }
    await eth.rawRequest('wallet_switchEthereumChain', params: [
      JSrawRequestParams(chainId: "Ox${chainID.toRadixString(16)}")
    ]);
    _credentials = await eth.requestAccount();
    notifyListeners();
  }

  @override
  Future<void> disconnect() async {
    _credentials = null;
    notifyListeners();
  }

  @override
  bool get isConnected =>
      credentials != null && (window.ethereum?.isConnected() ?? false);

  @override
  Web3Client? get client => window.ethereum != null && isConnected
      ? Web3Client.custom(window.ethereum!.asRpcService())
      : null;
}
