// Auto-generated from converter-element.html.
// DO NOT EDIT.

library x_converter;

import 'dart:html' as autogenerated;
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
  autogenerated.InputElement __e1, __e2;
  autogenerated.Template __t;
  
  ConverterComponent.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    _root.innerHtml = '''
    <div class="x-converter">
    <span> <content select=".label-one"></content> </span>
    <input type="text" style="text-align:right" id="__e-1">
    &lt; &gt;
    <input type="text" id="__e-2">
    <span> <content select=".label-two"></content> </span>
    </div>
    ''';
    __e1 = _root.query('#__e-1');
    __t.listen(__e1.onChange, ($event) { convertOnetoTwo(); });
    __t.listen(__e1.onInput, ($event) { thing_one = __e1.value; });
    __t.oneWayBind(() => (thing_one), (e) { __e1.value = e; }, false);
    __e2 = _root.query('#__e-2');
    __t.listen(__e2.onChange, ($event) { convertTwotoOne(); });
    __t.listen(__e2.onInput, ($event) { thing_two = __e2.value; });
    __t.oneWayBind(() => (thing_two), (e) { __e2.value = e; }, false);
    
    __t.create();
  }
  
  void inserted_autogenerated() {
    __t.insert();
  }
  
  void removed_autogenerated() {
    __t.remove();
    __e1 = __e2 = __t = null;
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
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
