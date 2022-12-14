import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../managers/managers.dart';

import '../../utils/utils.dart';
import 'segments.dart';

class QrCodeSegment extends Segment {
  const QrCodeSegment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final walletManager = WalletManager.instance;
    final isCopied = useState(false);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Scan QR code with a WalletConnect-compatible wallet',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: QrImage(
                data: walletManager.uri,
                foregroundColor: context.theme().onBackground,
              ),
            ),
          ),
          ElevatedButton.icon(
            style: context.theme().primaryButton(),
            label: Text(
              isCopied.value ? "Copied" : "Copy",
            ),
            icon: Icon(isCopied.value ? Icons.check : Icons.copy),
            onPressed: () async {
              await Clipboard.setData(
                ClipboardData(
                  text: walletManager.uri,
                ),
              );
              isCopied.value = true;
              await Future.delayed(
                const Duration(seconds: 2),
                () => isCopied.value = false,
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  String title() => "QR Code";

  @override
  IconData icon() => Icons.qr_code;
}
