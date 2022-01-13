import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:flutter_showcase/src/core/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemplateData {
  final String title;
  final String description;
  final List<LinkData> links;
  final TemplateThemeData theme;
  final LinkData logoLink;

  TemplateData({
    required this.theme,
    required this.title,
    required this.logoLink,
    required this.description,
    required this.links,
  });
}

class LinkData {
  final Widget icon;
  final String url;
  final String title;

  LinkData({required this.icon, required this.url, required this.title});

  factory LinkData.github(String url) {
    return LinkData(
      url: url,
      title: 'Github',
      icon: Icon(FontAwesomeIcons.github),
    );
  }

  factory LinkData.codePen(String url) {
    return LinkData(
      url: url,
      title: 'CodePen',
      icon: Icon(FontAwesomeIcons.codepen),
    );
  }

  factory LinkData.pub(String url) {
    return LinkData(
      url: url,
      title: 'Pub.dev',
      icon: Image.asset('assets/dart.png', package: 'flutter_showcase'),
    );
  }
}

abstract class Template {
  Widget builder({
    BuildContext context,
    TemplateData data,
    Widget app,
  });

  Widget screenshotBuilder({
    required BuildContext context,
    required TemplateData data,
    required Widget app,
  }) =>
      builder(
        context: context,
        data: data,
        app: app,
      );
}
