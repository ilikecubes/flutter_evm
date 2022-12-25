import 'package:flutter/material.dart';
import '../../connectors/local_connection_provider_stub.dart'
    if (dart.library.js) "../../connectors/local_connection_provider.dart"
    if (dart.library.io) '../../connectors/local_connection_provider_stub.dart';
import '../../managers/managers.dart';

import '../../utils/utils.dart';
import 'segments.dart';

class LocalInjectorSegment extends Segment {
  const LocalInjectorSegment({
    String title = "Extension",
    Key? key,
  })  : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Connect to a Browser Extension like MetaMask',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton.icon(
                style: context.theme().primaryButton(),
                onPressed: () async {
                  final manager = ConnectorManager.instance;
                  final localProvider = LocalConnectionProvider();
                  await localProvider.connect(
                      rpcUrl: manager.rpcUrl, chainID: manager.chainId);
                  if (localProvider.isConnected) {
                    manager.update(provider: localProvider);
                    Navigator.of(context).pop();
                  }
                },
                label: const Text('Connect'),
                icon: const Icon(Icons.open_in_browser),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  String title() => _title;

  @override
  IconData icon() => Icons.extension_outlined;
}
