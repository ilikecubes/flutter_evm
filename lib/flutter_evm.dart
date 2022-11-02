library flutter_evm;

import 'package:flutter/material.dart';
import 'package:flutter_evm/src/connectors/connection_provider.dart';
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

  Future<void> connect(BuildContext context, {int? chainId}) async {
    _connectionProvider.value = await Web3Modal(
      context: context,
      bridge: bridge,
      name: name,
      description: description,
      url: url,
      iconUrl: iconUrl,
    ).connect(chainId: chainId);
    notifyListeners();
  }

  bool get isConnected => _connectionProvider.value?.isConnected.value ?? false;

  String get currentAddress =>
      _connectionProvider.value?.currentAddress.value ?? "";

  Future<void> disconnect() async {
    await _connectionProvider.value?.disconnect();
    notifyListeners();
  }

  Future<String?> call({
    String? to,
    String? from,
    BigInt? value,
    BigInt? gasLimit,
    BigInt? gasPrice,
    int? nounce,
    String? data,
    BigInt? maxFeePerGas,
    BigInt? maxPriorityFeePerGas,
  }) async {
    return await _connectionProvider.value?.call(
      data: data,
      to: to,
      from: from,
      value: value,
      gasLimit: gasLimit,
      gasPrice: gasPrice,
      maxFeePerGas: maxFeePerGas,
      maxPriorityFeePerGas: maxPriorityFeePerGas,
      nounce: nounce,
    );
  }
}
