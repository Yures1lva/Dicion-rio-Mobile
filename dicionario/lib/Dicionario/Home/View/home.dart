import 'package:dicionario/Dicionario/Home/Controllers/home_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  final controller = HomeController();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _Choices = [
      'Word list',
      'History',
      'Favorites',
    ];

    return ListenableBuilder(
        listenable: widget.controller,
        builder: (context, child) {
          return Scaffold(
            body: SizedBox.expand(
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => ChoiceChip(
                                    label: Text(_Choices[index]),
                                    selected: widget.controller.value == index,
                                    onSelected: (value) {
                                      widget.controller
                                          .changeChip(value, index);
                                    },
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 10,
                                  ),
                              itemCount: _Choices.length),
                        ),
                        widget.controller.value == 0
                            ? Text("1")
                            : widget.controller.value == 1
                                ? Text("2")
                                : Text("3")
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
