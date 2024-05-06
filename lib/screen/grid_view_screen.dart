import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  String name = "kritima";
  List<bool>? buttonVisibility;
  @override
  void initState() {
    super.initState();
    buttonVisibility = List<bool>.filled(name.length, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(name.length, (index) {
              return Visibility(
                visible: buttonVisibility![index],
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonVisibility![index] = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (Colors.blue),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  child: Text(name[index]),
                ),
              );
            })),
      ),
    );
  }
}
