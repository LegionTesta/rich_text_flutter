import 'package:css_text/css_text.dart';
import 'package:mobx/mobx.dart';
import 'package:html/parser.dart' show parse;

part 'store.g.dart';

class HtmlStore = _HtmlStore with _$HtmlStore;

abstract class _HtmlStore with Store {

  @observable
  bool loading = false;

  @observable
  String html;

  @observable
  String backgroundColor = "red";

  @action
  void setHtml(){
    html = """
<body>
<h1 id='header1' style="color:blue;background:green">Header 1</h1>
</body>
""";
  }

  @action
  void addStyle(){
    loading = true;
    var document = parse(html);
    html = document.outerHtml.toString();
    var element = document.querySelector('#header1');
    element.attributes['style'] = "color:red;background:red";
    html = document.outerHtml;
    loading = false;
  }
}