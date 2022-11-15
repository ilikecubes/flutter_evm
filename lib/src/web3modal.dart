import 'package:flutter/material.dart';
import 'package:flutter_evm/src/widgets/wallet_connect_widget.dart';
import 'connectors/connection_provider.dart';
import 'connectors/walletconnect_connection_provider.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

import 'web3modal_base.dart';

class Web3Modal extends Web3ModalBase {
  Web3Modal({
    required String bridge,
    required String name,
    required String description,
    required String url,
    required String iconUrl,
  }) : super(
          bridge: bridge,
          name: name,
          description: description,
          url: url,
          iconUrl: iconUrl,
        ) {
    _walletConnect = WalletConnect(
      bridge: bridge,
      clientMeta: PeerMeta(
        name: name,
        description: description,
        url: url,
        icons: [iconUrl],
      ),
    );
  }

  late WalletConnect _walletConnect;

  @override
  Future<ConnectionProvider?> connect(BuildContext context,
      {int? chainId, String? rpcUrl}) async {
    final walletConnectConnectionProvider = WalletConnectConnectionProvider(
      context: context,
      modal: generateWCModal(_walletConnect),
    );
    walletConnectConnectionProvider.connect(
        chainID: chainId ?? 1,
        rpcUrl: rpcUrl ?? "https://mainnet.infura.io/v3/");
    return walletConnectConnectionProvider;
  }
}
