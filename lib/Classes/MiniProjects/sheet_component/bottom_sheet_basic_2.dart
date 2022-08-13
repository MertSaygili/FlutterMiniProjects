import 'package:flutter/material.dart';

class SheetBasicSecond extends StatefulWidget {
  const SheetBasicSecond({Key? key}) : super(key: key);

  @override
  State<SheetBasicSecond> createState() => _SheetBasicSecondState();
}

class _SheetBasicSecondState extends State<SheetBasicSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              elevation: 20,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              builder: (context) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 30,
                            child: Stack(
                              children: [
                                Divider(
                                  color: Colors.black38,
                                  thickness: 3,
                                  indent:
                                      MediaQuery.of(context).size.width * 0.40,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.40,
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  height: 20,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    alignment: Alignment.topCenter,
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(Icons.close),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text('Data'),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.network('https://picsum.photos/200'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Send'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: const Icon(Icons.share_location),
      ),
    );
  }
}
