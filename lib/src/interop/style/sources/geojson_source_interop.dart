@JS('mapboxgl')
library mapboxgl.style.interop.sources.geojson_source;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

@JS()
@anonymous
class GeoJsonSourceJsImpl {
  external FeatureCollectionJsImpl get data;
  external String get promoteId;
  external factory GeoJsonSourceJsImpl({
    String? type,
    String? promoteId,
    FeatureCollectionJsImpl data,
  });

  external GeoJsonSourceJsImpl setData(
      FeatureCollectionJsImpl featureCollection);
}
