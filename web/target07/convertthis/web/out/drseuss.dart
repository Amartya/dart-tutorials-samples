// Auto-generated from convertThis.html.
// DO NOT EDIT.

library convertThis_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'convertercomponent.dart';


// Original code
void main() {
  
}

// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.UnknownElement __e0;
  
  List<autogenerated.WatcherDisposer> __stoppers1;
  
  autogenerated_html.UnknownElement __e1;
  
  autogenerated_html.UnknownElement __e2;
  


  // Initialize fields.
  __e0 = _root.query('#__e-0');
  __stoppers1 = [];
  new ConverterComponent.forElement(__e0)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e1 = _root.query('#__e-1');
  new ConverterComponent.forElement(__e1)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e2 = _root.query('#__e-2');
  new ConverterComponent.forElement(__e2)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  

  // Attach model to views.
  __stoppers1.add(autogenerated.watchAndInvoke(() => 0.62, (__e) { __e0.xtag.ratio = __e.newValue; }));
  
  __e0.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __stoppers1.add(autogenerated.watchAndInvoke(() => 2.2, (__e) { __e1.xtag.ratio = __e.newValue; }));
  
  __e1.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __stoppers1.add(autogenerated.watchAndInvoke(() => 17.06, (__e) { __e2.xtag.ratio = __e.newValue; }));
  
  __e2.xtag..inserted()
  
  ..inserted_autogenerated();
  

}
