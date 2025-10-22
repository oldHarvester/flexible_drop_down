import 'package:flexible_drop_down/flexible_drop_down.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final FlexibleDropDownController _tooltipController =
      FlexibleDropDownController();

  @override
  void dispose() {
    _tooltipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FlexibleDropDown(
                    controller: _tooltipController,
                    alignment: FlexibleDropDownAlignment(
                      targetAnchor: Alignment.centerLeft,
                      followerAnchor: Alignment.centerRight,
                    ),
                    targetBuilder: (context, targetData) {
                      return Container(
                        width: 100,
                        height: 40,
                        color: Colors.amber,
                      );
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        _tooltipController.toggle();
                      },
                      child: Text('Open'),
                    ),
                  ),
                ),
              ),
              Container(
                height: 2000,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
