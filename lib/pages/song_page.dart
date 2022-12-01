import 'package:flutter/material.dart';
import 'package:player/widgets/neu_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: NeuBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: NeuBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                child: NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/album_img.jpg',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anarchy',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  'Pistols',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:23'),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              const NeuBox(
                child: LinearProgressIndicator(
                  minHeight: 10.0,
                  value: 0.7,
                  color: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 80.0,
                child: Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32.0,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: NeuBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
