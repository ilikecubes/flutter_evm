import '../connectors/connection_provider.dart';

class ConnectorManager {
  ConnectorManager._();
  static ConnectorManager? _instance;
  static ConnectorManager get instance {
    _instance ??= ConnectorManager._();
    return _instance!;
  }

  ConnectionProvider? _provider;
  ConnectionProvider? get provider => _provider;

  String? _rpcUrl;
  String get rpcUrl {
    _rpcUrl ??= "https://mainnet.infura.io/v3/";
    return _rpcUrl!;
  }

  int? _chainId;
  int get chainId {
    _chainId ??= 1;
    return _chainId!;
  }

  void update({ConnectionProvider? provider, String? rpcUrl, int? chainId}) {
    if (provider != null) {
      _provider = provider;
    }
    if (rpcUrl != null) {
      _rpcUrl = rpcUrl;
    }
    if (chainId != null) {
      _chainId = chainId;
    }
  }
}
