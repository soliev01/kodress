import 'package:flutter/material.dart';
import 'package:kodress/kodress.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AddressData? data;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: TextField(
            controller: _controller,
            decoration: _inputDecoration,
            onTap: _onTap,
          ),
        ),
      ),
    );
  }

  final _inputDecoration = const InputDecoration(
    label: Text('주소'),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(12),
    )),
  );

  void _onTap() async {
    data = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const Kodress(),
      ),
    );
    if (data != null) {
      setState(() {
        _controller.text = data!.address ?? _controller.text;
      });
    }
  }
}
