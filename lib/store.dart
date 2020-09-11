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
<div id='div1'>
<h1 id='header1' style="color:blue;background:green">Header 1</h1>
<a></a>
</div>
</body>
""";
  }

  @action
  void addStyle({String color, String backgroundColor}){
    loading = true;
    var document = parse(html);
    var element = document.querySelector('#header1');
    element.attributes['style'] = "color:$color;background:$backgroundColor";
    html = document.outerHtml;
    print(html);
    loading = false;
  }
}