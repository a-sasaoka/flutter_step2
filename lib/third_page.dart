import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      '画像のタイトル、ちょっと長くしてみよう',
      '画像のタイトル',
      '画像のタイトル',
      '画像のタイトル、かなり長くしてみたらどうなるかも確認してみよう！！！！！！！',
    ];

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          '文字数長めのタイトルを表示してみる',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.cast_connected),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 24,
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                        'https://yt3.googleusercontent.com/ePwMWpNBPbjvLGIOLpbdYvHvw4iKv5IftZhEWZZu7_rNxrz3Ra9eqQxvPNOdgG5z-iHWHoInYpE=s900-c-k-c0x00ffffff-no-rj'),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.3,
                            ),
                            maxLines: 3,
                          ),
                          const Text(
                            '12345回視聴 5日前',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
