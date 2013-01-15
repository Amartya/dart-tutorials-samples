// Auto-generated from shout.html.
// DO NOT EDIT.

library shout_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'package:web_ui/watcher.dart' as watchers;


// Original code
String shoutThis='';

void main() {
}

String palindrome() {
  var buffer = new StringBuffer(shoutThis);
  for (int i = shoutThis.length - 1; i >= 0; i--) {
    buffer.add(shoutThis[i]);
  }
  return buffer.toString();
}


// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.InputElement __e0;
  
  autogenerated_html.EventListener __listener__e0_input_1;
  
  List<autogenerated.WatcherDisposer> __stoppers2;
  
  autogenerated_html.DivElement __e2;
  
  var __binding1;
  
  autogenerated_html.DivElement __e4;
  
  var __binding3;
  
  autogenerated_html.DivElement __e6;
  
  var __binding5;
  
  autogenerated_html.DivElement __e8;
  
  var __binding7;
  


  // Initialize fields.
  __e0 = _root.query('#__e-0');
  __stoppers2 = [];
  __e2 = _root.query('#__e-2');
  __binding1 = new autogenerated_html.Text('');
  __e2.nodes.add(new autogenerated_html.Text('      Length: '));
  __e2.nodes.add(__binding1);
  __e2.nodes.add(new autogenerated_html.Text(' '));
  __e4 = _root.query('#__e-4');
  __binding3 = new autogenerated_html.Text('');
  __e4.nodes.add(new autogenerated_html.Text('     Shouted: '));
  __e4.nodes.add(__binding3);
  __e4.nodes.add(new autogenerated_html.Text(' '));
  __e6 = _root.query('#__e-6');
  __binding5 = new autogenerated_html.Text('');
  __e6.nodes.add(new autogenerated_html.Text('   Substring: '));
  __e6.nodes.add(__binding5);
  __e6.nodes.add(new autogenerated_html.Text(' '));
  __e8 = _root.query('#__e-8');
  __binding7 = new autogenerated_html.Text('');
  __e8.nodes.add(new autogenerated_html.Text(' Palindromic: '));
  __e8.nodes.add(__binding7);
  __e8.nodes.add(new autogenerated_html.Text(' '));
  

  // Attach model to views.
  __listener__e0_input_1 = ($event) {
    shoutThis = __e0.value;
    autogenerated.dispatch();
  };
  __e0.on.input.add(__listener__e0_input_1);
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => shoutThis, (__e) { __e0.value = __e.newValue; }));
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => '${ shoutThis.length }', (__e) {
    __binding1 = autogenerated.updateBinding( shoutThis.length , __binding1, __e.newValue);
  }));
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => '${ shoutThis.toUpperCase() }', (__e) {
    __binding3 = autogenerated.updateBinding( shoutThis.toUpperCase() , __binding3, __e.newValue);
  }));
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => '${ (shoutThis.length >= 6) ?
  shoutThis.substring(1, 5) :
  shoutThis.substring(0, 0) }', (__e) {
    __binding5 = autogenerated.updateBinding( (shoutThis.length >= 6) ?
    shoutThis.substring(1, 5) :
    shoutThis.substring(0, 0) , __binding5, __e.newValue);
  }));
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => '${ palindrome() }', (__e) {
    __binding7 = autogenerated.updateBinding( palindrome() , __binding7, __e.newValue);
  }));
  

}
