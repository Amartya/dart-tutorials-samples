// Auto-generated from converter-element.html.
// DO NOT EDIT.

library x_converter;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'package:web_ui/web_ui.dart';

class ConverterComponent extends WebComponent {
  
  /** Autogenerated from the template. */
  
  /**
  * Shadow root for this component. We use 'var' to allow simulating shadow DOM
  * on browsers that don't support this feature.
  */
  var _root;
  autogenerated_html.InputElement __e3;
  
  autogenerated_html.EventListener __listener__e3_change_1;
  
  autogenerated_html.EventListener __listener__e3_input_2;
  
  List<autogenerated.WatcherDisposer> __stoppers3;
  
  autogenerated_html.InputElement __e4;
  
  autogenerated_html.EventListener __listener__e4_change_4;
  
  autogenerated_html.EventListener __listener__e4_input_5;
  
  ConverterComponent.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    
    _root.innerHtml = '''
    
    <div class="x-converter">
    <span> <content select=".label-one"></content> </span>
    <input type="text" style="text-align:right" id="__e-3">
    &lt; &gt;
    <input type="text" id="__e-4">
    <span> <content select=".label-two"></content> </span>
    </div>
    ''';
    __e3 = _root.query('#__e-3');
    __stoppers3 = [];
    __e4 = _root.query('#__e-4');
    
  }
  
  void inserted_autogenerated() {
    __listener__e3_change_1 = ($event) {
      convertOnetoTwo();
      autogenerated.dispatch();
    };
    __e3.on.change.add(__listener__e3_change_1);
    
    __listener__e3_input_2 = ($event) {
      thing_one = __e3.value;
      autogenerated.dispatch();
    };
    __e3.on.input.add(__listener__e3_input_2);
    
    __stoppers3.add(autogenerated.watchAndInvoke(() => thing_one, (__e) { __e3.value = __e.newValue; }));
    
    __listener__e4_change_4 = ($event) {
      convertTwotoOne();
      autogenerated.dispatch();
    };
    __e4.on.change.add(__listener__e4_change_4);
    
    __listener__e4_input_5 = ($event) {
      thing_two = __e4.value;
      autogenerated.dispatch();
    };
    __e4.on.input.add(__listener__e4_input_5);
    
    __stoppers3.add(autogenerated.watchAndInvoke(() => thing_two, (__e) { __e4.value = __e.newValue; }));
    
  }
  
  void removed_autogenerated() {
    _root = null;
    
    (__stoppers3..forEach((s) => s())).clear();
    
    __e3.on.change.remove(__listener__e3_change_1);
    __listener__e3_change_1 = null;
    
    __e3.on.input.remove(__listener__e3_input_2);
    __listener__e3_input_2 = null;
    
    __e3 = null;
    
    __e4.on.change.remove(__listener__e4_change_4);
    __listener__e4_change_4 = null;
    
    __e4.on.input.remove(__listener__e4_input_5);
    __listener__e4_input_5 = null;
    
    __e4 = null;
    
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated_html.ShadowRoot) _root = this;
  }
  
  /** Original code from the component. */
  
  num ratio = 0.5;
  String thing_one = '0';
  String thing_two = '0';
  
  void convertOnetoTwo() {
    var one = double.parse(thing_one);
    var two = one/ratio;
    thing_two = two.toStringAsFixed(2);
  }
  
  void convertTwotoOne() {
    var two = double.parse(thing_two);
    var one = two*ratio;
    thing_one = one.toStringAsFixed(2);
  }
}
