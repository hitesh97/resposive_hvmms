// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:resposive_hvmms/components/colors.dart';
import 'package:resposive_hvmms/ui/block_wrapper.dart';
import 'package:resposive_hvmms/ui/blocks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            const ResponsiveBreakpoint.resize(600, name: MOBILE),
            const ResponsiveBreakpoint.resize(850, name: TABLET),
            const ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: background)),
      home: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 66), child: MenuBar()),
        body: ListView.builder(
            itemCount: blocks.length,
            itemBuilder: (context, index) {
              return blocks[index];
            }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

List<Widget> blocks = [
  ResponsiveWrapper(
      maxWidth: 1200,
      minWidth: 1200,
      defaultScale: true,
      mediaQueryData: const MediaQueryData(size: Size(1200, 640)),
      child: RepaintBoundary(child: EmptyWidget())),
  const BlockWrapper(GetStarted()),
  const BlockWrapper(Features()),
  const BlockWrapper(EmptyWidget()),
  const BlockWrapper(FastDevelopment()),
  const BlockWrapper(BeautifulUI()),
  const BlockWrapper(NativePerformance()),
  const BlockWrapper(WhoUsesFlutter()),
  const BlockWrapper(FlutterNewsRow()),
  const BlockWrapper(InstallFlutter()),
  const Footer(),
];

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(Object context) {
    return const Text("I am empty widget");
  }
}
