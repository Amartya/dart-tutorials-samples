// Auto-generated from littleben.html.
// DO NOT EDIT.

library littleben_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;


// Original code
String currentTime;

void main() {
  Date today = new Date.now();
  currentTime = formatTime(today.hour, today.minute, today.second);
}

String formatTime(int h, int m, int s) {
  if (h > 12) { h = h - 12; }
  String minute = (m <= 9) ? '0$m' : '$m';
  String second = (s <= 9) ? '0$s' : '$s';
  return '$h:$minute:$second';
}


// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.DivElement __e1;
  
  var __binding0;
  
  List<autogenerated.WatcherDisposer> __stoppers1;
  


  // Initialize fields.
  __e1 = _root.query('#__e-1');
  __binding0 = new autogenerated_html.Text('');
  __stoppers1 = [];
  __e1.nodes.add(new autogenerated_html.Text('\n      The current time is: '));
  __e1.nodes.add(__binding0);
  __e1.nodes.add(new autogenerated_html.Text('\n    '));
  

  // Attach model to views.
  __stoppers1.add(autogenerated.watchAndInvoke(() => '${currentTime}', (__e) {
    __binding0 = autogenerated.updateBinding(currentTime, __binding0, __e.newValue);
  }));
  

}
