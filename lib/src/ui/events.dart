@JS('mapboxgl')
library mapboxgl.ui.events;

import 'dart:html';
import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

@JS()
@anonymous
abstract class MapMouseEvent {
  /// The event type.
  external String get type;

  /// The `MapboxMap` object that fired the event.
  external MapboxMap get target;

  /// The DOM event which caused the map event.
  external MouseEvent get originalEvent;

  /// The pixel coordinates of the mouse cursor, relative to the map and measured from the top left corner.
  external Point get point;

  /// The geographic location on the map of the mouse cursor.
  external LngLat get lngLat;

  ///  Prevents subsequent default processing of the event by the map.
  ///
  ///  Calling this method will prevent the following default map behaviors:
  ///
  ///  *  On `mousedown` events, the behavior of {@link DragPanHandler}
  ///  *  On `mousedown` events, the behavior of {@link DragRotateHandler}
  ///  *  On `mousedown` events, the behavior of {@link BoxZoomHandler}
  ///  *  On `dblclick` events, the behavior of {@link DoubleClickZoomHandler}
  external preventDefault();

  /// `true` if `preventDefault` has been called.
  external bool get defaultPrevented;
}

@JS()
@anonymous
abstract class MapTouchEvent {
  /// The event type.
  external String get type;

  /// The `MapboxMap` object that fired the event.
  external MapboxMap get target;

  /// The DOM event which caused the map event.
  external TouchEvent get originalEvent;

  /// The geographic location on the map of the center of the touch event points.
  external LngLat get lngLat;

  /// The pixel coordinates of the center of the touch event points, relative to the map and measured from the top left
  /// corner.
  external Point get point;

  ///  The array of pixel coordinates corresponding to a
  ///  [touch event's `touches`](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/touches) property.
  external List<Point> get points;

  ///  The geographical locations on the map corresponding to a
  ///  [touch event's `touches`](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/touches) property.
  external List<LngLat> get lngLats;

  ///  Prevents subsequent default processing of the event by the map.
  ///
  ///  Calling this method will prevent the following default map behaviors:
  ///
  ///  *  On `touchstart` events, the behavior of {@link DragPanHandler}
  ///  *  On `touchstart` events, the behavior of {@link TouchZoomRotateHandler}
  external preventDefault();

  ///  `true` if `preventDefault` has been called.
  external bool get defaultPrevented;
}
