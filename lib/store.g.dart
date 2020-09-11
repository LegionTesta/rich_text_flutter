// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HtmlStore on _HtmlStore, Store {
  final _$loadingAtom = Atom(name: '_HtmlStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$htmlAtom = Atom(name: '_HtmlStore.html');

  @override
  String get html {
    _$htmlAtom.reportRead();
    return super.html;
  }

  @override
  set html(String value) {
    _$htmlAtom.reportWrite(value, super.html, () {
      super.html = value;
    });
  }

  final _$backgroundColorAtom = Atom(name: '_HtmlStore.backgroundColor');

  @override
  String get backgroundColor {
    _$backgroundColorAtom.reportRead();
    return super.backgroundColor;
  }

  @override
  set backgroundColor(String value) {
    _$backgroundColorAtom.reportWrite(value, super.backgroundColor, () {
      super.backgroundColor = value;
    });
  }

  final _$_HtmlStoreActionController = ActionController(name: '_HtmlStore');

  @override
  void setHtml() {
    final _$actionInfo =
        _$_HtmlStoreActionController.startAction(name: '_HtmlStore.setHtml');
    try {
      return super.setHtml();
    } finally {
      _$_HtmlStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addStyle() {
    final _$actionInfo =
        _$_HtmlStoreActionController.startAction(name: '_HtmlStore.addStyle');
    try {
      return super.addStyle();
    } finally {
      _$_HtmlStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
html: ${html},
backgroundColor: ${backgroundColor}
    ''';
  }
}
