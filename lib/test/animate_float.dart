import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedFloatingActionButton(),
    );
  }
}

class AnimatedFloatingActionButton extends StatefulWidget {
  const AnimatedFloatingActionButton({super.key});

  @override
  AnimatedFloatingActionButtonState createState() =>
      AnimatedFloatingActionButtonState();
}

class AnimatedFloatingActionButtonState
    extends State<AnimatedFloatingActionButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(2.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onFabPressed() async {
    await _controller.forward();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const NextPage()))
        .then((_) => _controller.reverse());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height*0.2,
        title: const Text('Animated FAB Example', style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(16)
            ),
            margin: const EdgeInsets.symmetric(vertical: 4),
          );
        },
      ),
      floatingActionButton: SizedBox(
        width: 200,
        child: SlideTransition(
          position: _offsetAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: FloatingActionButton(
              onPressed: _onFabPressed,
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}



class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  NextPageState createState() => NextPageState();
}

class NextPageState extends State<NextPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.1),  // 75% of the screen height
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Next Page', style: TextStyle(color: Colors.white),),
      ),
      body: SlideTransition(
        position: _offsetAnimation,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(16)
                ),
                margin: const EdgeInsets.symmetric(vertical: 4),
              );
            },
          ),
        ),
      ),
    );
  }
}
