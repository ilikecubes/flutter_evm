import 'package:flutter/material.dart';
import 'package:flutter_evm/src/painters/metamask_painter.dart';
import 'package:flutter_evm/src/painters/walletconnect_painter.dart';
import 'package:flutter_evm/src/widgets/wallet_connect_widget.dart';
import 'connectors/connection_provider.dart';
import 'connectors/local_connection_provider.dart';
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
    required String rpcUrl,
  }) : super(
          bridge: bridge,
          name: name,
          description: description,
          url: url,
          iconUrl: iconUrl,
          rpcUrl: rpcUrl,
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
  Future<ConnectionProvider?> connect(
    BuildContext context, {
    int? chainId,
    String? rpcUrl,
  }) async {
    final result = await showDialog<ConnectionProvider>(
      context: context,
      builder: (context) => AlertDialog(
        content: SizedBox(
          height: 250.0,
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Select Wallet",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _ProviderButton(
                      onPressed: () async {
                        final connectionProvider = LocalConnectionProvider();
                        await connectionProvider.connect(
                            chainID: chainId ?? 1,
                            rpcUrl: rpcUrl ?? "https://mainnet.infura.io/v3/");
                        Navigator.of(context).pop(connectionProvider);
                      },
                      customPaint: metaMaskCustomPaint(100.0),
                      text: 'MetaMask',
                    ),
                    _ProviderButton(
                      onPressed: () async {
                        final connectionProvider =
                            WalletConnectConnectionProvider(
                          context: context,
                          modal: generateWCModal(_walletConnect),
                        );
                        await connectionProvider.connect(
                            chainID: chainId ?? 1,
                            rpcUrl: rpcUrl ?? "https://mainnet.infura.io/v3/");
                        Navigator.of(context).pop(connectionProvider);
                      },
                      customPaint: walletConnectCustomPaint(100.0),
                      text: 'WalletConnect',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return result;
  }
}

class _ProviderButton extends StatelessWidget {
  const _ProviderButton({
    Key? key,
    required this.onPressed,
    required this.customPaint,
    required this.text,
  }) : super(key: key);

  final void Function()? onPressed;
  final CustomPaint customPaint;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: SizedBox(
              height: 120.0,
              width: 120.0,
              child: Center(
                child: customPaint,
              ),
            ),
          ),
          onTap: onPressed,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
      ],
    );
  }
}
