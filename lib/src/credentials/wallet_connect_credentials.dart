import 'dart:typed_data';

import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:webthree/crypto.dart';
import 'package:webthree/webthree.dart';

class WalletConnectCredentials extends CredentialsWithKnownAddress
    implements CustomTransactionSender {
  WalletConnectCredentials({required this.provider});

  final EthereumWalletConnectProvider provider;

  @override
  Future<String> sendTransaction(Transaction transaction) async {
    final hash = await provider.sendTransaction(
      from: transaction.from!.hex,
      to: transaction.to?.hex,
      data: transaction.data,
      gas: transaction.maxGas,
      gasPrice: transaction.gasPrice?.getInWei,
      value: transaction.value?.getInWei,
      nonce: transaction.nonce,
    );

    return hash;
  }

  @override
  Future<MsgSignature> signToSignature(Uint8List payload,
      {int? chainId, bool isEIP1559 = false}) {
    throw UnimplementedError();
  }

  @override
  EthereumAddress get address =>
      EthereumAddress.fromHex(provider.connector.session.accounts.first);
}
