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
            child: SingleChildScrollView(
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
                  const Divider(
                    color: Colors.black,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '何か入力してください',
                    ),
                    onChanged: (text) {
                      nameText = text;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      const SizedBox(
                        width: 16,
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
                ],
              ),
            )),
      ),
    );
  }
}
