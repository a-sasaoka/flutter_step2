import 'package:flutter/material.dart';
import 'package:step2/second_page.dart';
import 'package:step2/third_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    String nameText = '';
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('FIRST'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              */
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              TextField(
                onChanged: (text) {
                  nameText = text;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        //fullscreenDialog: true,
                        builder: (context) => SecondPage(nameText),
                      ));
                },
                child: const Text('次の画面へ'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => ThirdPage(),
                      ));
                },
                child: const Text('リスト表示'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
