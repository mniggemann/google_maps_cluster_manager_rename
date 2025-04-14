import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

mixin ClusterItemCustom {
  LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManagerCustom.precision);
}
